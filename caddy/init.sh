#!/bin/sh
echo "starting caddy..."
caddy reverse-proxy --from :8080 --to "${CADDY_TO}"
