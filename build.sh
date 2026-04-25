#!/usr/bin/env bash
set -e

QUARTO_VERSION=1.9.37

# Install quarto
wget https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-{QUARTO_VERSION}-linux-amd64.tar.gz
tar -xzf quarto-${QUARTO_VERSION}-linux-amd64.tar.gz

# Run render command in Quarto folder
./quarto-v${QUARTO_VERSION}/bin/quarto render