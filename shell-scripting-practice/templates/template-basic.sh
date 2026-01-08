#!/bin/bash
# Script Template - Basic Structure
# Description: [Describe what this script does]
# Author: [Your Name]
# Date: $(date '+%Y-%m-%d')

# Exit on error
set -e

# Exit on undefined variable
set -u

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="${SCRIPT_DIR}/script.log"

# Colors for output (optional)
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Functions
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"
}

error() {
    echo -e "${RED}ERROR: $*${NC}" >&2
    log "ERROR: $*"
    exit 1
}

success() {
    echo -e "${GREEN}SUCCESS: $*${NC}"
    log "SUCCESS: $*"
}

warning() {
    echo -e "${YELLOW}WARNING: $*${NC}"
    log "WARNING: $*"
}

# Usage function
usage() {
    cat << EOF
Usage: $0 [OPTIONS]

Description: [Describe what this script does]

Options:
    -h, --help      Show this help message
    -v, --verbose   Enable verbose output

Examples:
    $0
    $0 --verbose

EOF
    exit 0
}

# Parse command line arguments
VERBOSE=false
while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            usage
            ;;
        -v|--verbose)
            VERBOSE=true
            shift
            ;;
        *)
            error "Unknown option: $1"
            ;;
    esac
done

# Main script logic
main() {
    log "Script started"
    
    # Your code here
    
    log "Script completed successfully"
}

# Run main function
main "$@"


