#!/bin/sh
echo "starting caddy..."
caddy reverse-proxy --from "${CADDY_FROM}" --to "${CADDY_TO}"
