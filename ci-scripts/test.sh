#!/usr/bin/env bash
# SPDX-License-Identifier: AGPL-3.0-or-later
# SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
set -Eeuo pipefail

echo "Running nano-aida tests..."

cd "$(dirname "$0")/../src"

# Build the project
if command -v alr &> /dev/null; then
    alr --non-interactive build
else
    gprbuild -P nano_aida.gpr
fi

# Run test mode
./bin/nano_aida --test

echo "Tests completed."
