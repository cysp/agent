#!/bin/bash

set -euo pipefail

echo '+++ Running tests'

go test $(go list ./... | grep -v /vendor/)
