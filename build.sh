#!/usr/bin/env bash
set -e

QUARTO_VERSION=1.9.37
QUARTO_DIR=/tmp/quarto-${QUARTO_VERSION}

# Install quarto
wget -q https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz -O /tmp/quarto.tar.gz
tar -xzf /tmp/quarto.tar.gz -C /tmp

# Run render command in Quarto folder
export PATH=${QUARTO_DIR}/bin:$PATH
quarto render .