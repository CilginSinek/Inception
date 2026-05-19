#!/bin/sh
set -eu

CERT_PATH="/etc/ssl/certs/nginx.crt"
KEY_PATH="/etc/ssl/private/nginx.key"

if [ ! -f "$CERT_PATH" ] || [ ! -f "$KEY_PATH" ]; then
	mkdir -p "$(dirname "$CERT_PATH")" "$(dirname "$KEY_PATH")"
	openssl req -x509 -nodes -newkey rsa:2048 -days 365 \
		-keyout "$KEY_PATH" \
		-out "$CERT_PATH" \
		-subj "/CN=iduman.42.fr"
	chmod 600 "$KEY_PATH"
fi