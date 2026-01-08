#!/bin/bash
# Example Deployment Script
# This script demonstrates common DevOps automation tasks

set -e  # Exit on error
set -u  # Exit on undefined variable

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
ENVIRONMENT="${1:-staging}"
APP_NAME="my-app"
DOCKER_IMAGE="my-registry/${APP_NAME}:${ENVIRONMENT}"
KUBERNETES_NAMESPACE="${APP_NAME}-${ENVIRONMENT}"

# Functions
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

check_prerequisites() {
    log_info "Checking prerequisites..."
    
    # Check if required tools are installed
    command -v docker >/dev/null 2>&1 || { log_error "Docker is required but not installed. Aborting."; exit 1; }
    command -v kubectl >/dev/null 2>&1 || { log_error "kubectl is required but not installed. Aborting."; exit 1; }
    command -v terraform >/dev/null 2>&1 || { log_warn "Terraform not found, skipping infrastructure checks"; }
    
    log_info "Prerequisites check passed"
}

build_image() {
    log_info "Building Docker image: ${DOCKER_IMAGE}"
    docker build -t "${DOCKER_IMAGE}" .
    
    if [ $? -eq 0 ]; then
        log_info "Docker image built successfully"
    else
        log_error "Docker build failed"
        exit 1
    fi
}

run_tests() {
    log_info "Running tests..."
    # Add your test commands here
    # pytest tests/
    # npm test
    log_info "Tests completed"
}

push_image() {
    log_info "Pushing Docker image to registry..."
    docker push "${DOCKER_IMAGE}"
    
    if [ $? -eq 0 ]; then
        log_info "Image pushed successfully"
    else
        log_error "Failed to push image"
        exit 1
    fi
}

deploy_to_kubernetes() {
    log_info "Deploying to Kubernetes namespace: ${KUBERNETES_NAMESPACE}"
    
    # Check if namespace exists
    if ! kubectl get namespace "${KUBERNETES_NAMESPACE}" >/dev/null 2>&1; then
        log_info "Creating namespace: ${KUBERNETES_NAMESPACE}"
        kubectl create namespace "${KUBERNETES_NAMESPACE}"
    fi
    
    # Update image in deployment
    kubectl set image deployment/${APP_NAME} ${APP_NAME}=${DOCKER_IMAGE} -n ${KUBERNETES_NAMESPACE}
    
    # Wait for rollout
    log_info "Waiting for deployment to complete..."
    kubectl rollout status deployment/${APP_NAME} -n ${KUBERNETES_NAMESPACE} --timeout=5m
    
    if [ $? -eq 0 ]; then
        log_info "Deployment successful"
    else
        log_error "Deployment failed"
        exit 1
    fi
}

health_check() {
    log_info "Performing health check..."
    
    # Get service endpoint
    SERVICE_URL=$(kubectl get svc ${APP_NAME} -n ${KUBERNETES_NAMESPACE} -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
    
    if [ -z "$SERVICE_URL" ]; then
        log_warn "Service URL not available, skipping health check"
        return
    fi
    
    # Wait a bit for service to be ready
    sleep 10
    
    # Check health endpoint
    HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://${SERVICE_URL}/health || echo "000")
    
    if [ "$HTTP_CODE" = "200" ]; then
        log_info "Health check passed"
    else
        log_error "Health check failed (HTTP ${HTTP_CODE})"
        exit 1
    fi
}

rollback() {
    log_warn "Rolling back deployment..."
    kubectl rollout undo deployment/${APP_NAME} -n ${KUBERNETES_NAMESPACE}
    log_info "Rollback completed"
}

# Main execution
main() {
    log_info "Starting deployment to ${ENVIRONMENT} environment"
    
    # Trap errors and rollback
    trap 'rollback' ERR
    
    check_prerequisites
    run_tests
    build_image
    push_image
    deploy_to_kubernetes
    health_check
    
    log_info "Deployment completed successfully!"
}

# Run main function
main "$@"


