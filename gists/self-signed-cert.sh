#!/usr/bin/env bash
set -e

openssl req -x509 -newkey rsa:4096   -keyout key.pem   -out cert.pem   -days 365   -nodes

echo "Generated key.pem and cert.pem"
