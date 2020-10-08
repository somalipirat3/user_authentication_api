#!/bin/bash

set -eo pipefail

# Remove server pid if any
rm -f /api/tmp/pids/server.pid

# create and migrate the database
rails db:create db:migrate

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"