#!/bin/bash
set -e

echo "External IP is:" $(curl -s ifconfig.me)
echo "Starting Coturn..."

exec turnserver -c /etc/turnserver.conf

