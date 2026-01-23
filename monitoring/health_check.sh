#!/bin/bash
# ==========================================
# Script: API Health Check
# Description: Simple uptime check for microservices.
# ==========================================

# List of endpoints to check
URLS=(
    "http://localhost:8080/api/v1/status"
    "https://google.com"
)

echo "--- Starting Health Check ---"

for URL in "${URLS[@]}"; do
    # Curl flags: -s (silent), -o (output to null), -w (write out http_code)
    STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

    if [ "$STATUS" -eq 200 ]; then
        echo "✅ [OK] $URL is available."
    else
        echo "❌ [ERROR] $URL returned status: $STATUS"
    fi
done

echo "--- Check Finished ---"