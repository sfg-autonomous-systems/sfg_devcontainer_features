#!/bin/sh
set -e

# Runs as root at build time. Docker copies this directory's ownership into a
# new, empty named volume on first mount, so the remote user can write to it
# at runtime without sudo.
mkdir -p "/mnt/claude-code-config"
chown "${_REMOTE_USER:-root}" "/mnt/claude-code-config"
