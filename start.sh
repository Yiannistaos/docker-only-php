#!/bin/bash

set -e

# Note: update /etc/hosts separately, may require sudo privileges

# Install mkcert, assumes brew already installed
brew install mkcert

# # Initialize and create certificates
mkcert -install
mkdir -p ./nginx/certs
mkcert -key-file ./nginx/certs/php.test-key.pem -cert-file ./nginx/certs/php.test.pem php.test

# Run docker containers as daemons
docker-compose stop && docker-compose up -d --build

# Open default browser
open https://php.test