#!/bin/bash

GET() {
    curl -s "https://malware.ai/api/analysis/$ANY_ID" --header "Authorization: Bearer $API_KEY"
}

DISPLAY_USAGE() {
    echo "Usage: Inlyse API Fetcher: $0 -k [API_KEY] -a [ANALYSIS_ID]"
}

HELP() {
    DISPLAY_USAGE
    cat << EOF
[-k, --api-key]: Enter Inlyse API key after argument
[-a, --analysis-id]: Enter analysis ID after argument
[-h, --help]: Display this help text
EOF
}

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -k|--api-key) API_KEY="$2"; shift 2;;
        -a|--analysis-id) ANY_ID="$2"; shift 2;;
        -h|--help) HELP; exit 0;;
        *) echo "Unknown option: $1"; DISPLAY_USAGE; exit 1;;
    esac
done

if [[ -z "$API_KEY" ]]; then
    echo "API Key cannot be empty."
    exit 1
fi

if [[ -z "$ANY_ID" ]]; then
    echo "Analysis ID cannot be empty."
    exit 1
fi

GET
