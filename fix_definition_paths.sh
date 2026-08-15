#!/usr/bin/env bash

set -e

find . -type f -name "Scenario.txt" -exec sed -i 's/Knights\.c4d/Own\\Knights\.c4d/g' {} +
