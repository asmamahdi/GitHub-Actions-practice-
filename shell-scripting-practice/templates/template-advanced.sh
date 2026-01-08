#!/bin/bash
# Script Template - Advanced Structure
# Description: [Describe what this script does]
# Author: [Your Name]
# Date: $(date '+%Y-%m-%d')
# Version: 1.0.0

# Strict mode
set -euo pipefail

# Trap for cleanup on exit
cleanup() {
    local exit_code=$?
    if [[ $exit_code -ne 0 ]]; then
        error "Script failed with exit code $exit_code"
    fi
    # Add cleanup tasks here
    exit $exit_code
}
trap cleanup EXIT INT TERM

# Script configuration
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly SCRIPT_NAME="$(basename "$0")"
readonly LOG_DIR="${SCRIPT_DIR}/logs"
readonly LOG_FILE="${LOG_DIR}/${SCRIPT_NAME}.$(date '+%Y%m%d').log"
readonly CONFIG_FILE="${SCRIPT_DIR}/config.conf"

# Create log directory if it doesn't exist
mkdir -p "$LOG_DIR"

# Logging functions
log() {
    local level=$1
    shift
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$level] $*" | tee -a "$LOG_FILE"
}

log_info() {
    log "INFO" "$@"
}

log_error() {
    log "ERROR" "$@" >&2
}

log_warn() {
    log "WARN" "$@"
}

log_debug() {
    if [[ "${VERBOSE:-false}" == "true" ]]; then
        log "DEBUG" "$@"
    fi
}

# Error handling
error() {
    log_error "$@"
    exit 1
}

# Configuration loading
load_config() {
    if [[ -f "$CONFIG_FILE" ]]; then
        log_info "Loading configuration from $CONFIG_FILE"
        # shellcheck source=/dev/null
        source "$CONFIG_FILE"
    else
        log_warn "Configuration file not found: $CONFIG_FILE"
    fi
}

# Validation functions
validate_requirements() {
    local missing_tools=()
    
    # Check for required tools
    local required_tools=("curl" "jq")
    for tool in "${required_tools[@]}"; do
        if ! command -v "$tool" &> /dev/null; then
            missing_tools+=("$tool")
        fi
    done
    
    if [[ ${#missing_tools[@]} -gt 0 ]]; then
        error "Missing required tools: ${missing_tools[*]}"
    fi
}

# Usage function
usage() {
    cat << EOF
$SCRIPT_NAME - [Description]

Usage:
    $SCRIPT_NAME [OPTIONS] [ARGUMENTS]

Options:
    -h, --help          Show this help message
    -v, --verbose       Enable verbose output
    -c, --config FILE   Use custom config file
    -d, --dry-run       Show what would be done without making changes

Arguments:
    [Add your arguments here]

Examples:
    $SCRIPT_NAME
    $SCRIPT_NAME --verbose
    $SCRIPT_NAME --dry-run

EOF
    exit 0
}

# Parse command line arguments
parse_args() {
    VERBOSE=false
    DRY_RUN=false
    
    while [[ $# -gt 0 ]]; do
        case $1 in
            -h|--help)
                usage
                ;;
            -v|--verbose)
                VERBOSE=true
                shift
                ;;
            -c|--config)
                CONFIG_FILE="$2"
                shift 2
                ;;
            -d|--dry-run)
                DRY_RUN=true
                shift
                ;;
            *)
                error "Unknown option: $1"
                ;;
        esac
    done
}

# Main function
main() {
    log_info "Starting $SCRIPT_NAME"
    
    # Load configuration
    load_config
    
    # Validate requirements
    validate_requirements
    
    # Your main logic here
    log_info "Processing..."
    
    if [[ "$DRY_RUN" == "true" ]]; then
        log_info "DRY RUN MODE - No changes will be made"
        # Show what would be done
    else
        # Perform actual operations
        log_info "Executing operations..."
    fi
    
    log_info "Completed successfully"
}

# Run main function with all arguments
main "$@"


