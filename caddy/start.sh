#!/bin/sh

# Check if CADDY_WITHOUT_REFERER environment variable is set
if [ "$CADDY_WITHOUT_REFERER" = "true" ]; then
    # If true, use Caddyfile_without_referer
    CADDYFILE="Caddyfile_without_referer"
else
    # If not set or set to anything other than true, use the default Caddyfile
    CADDYFILE="Caddyfile"
fi

# Run Caddy with the selected Caddyfile
caddy run --config "$CADDYFILE"
