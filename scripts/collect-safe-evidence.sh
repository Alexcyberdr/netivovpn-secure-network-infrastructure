#!/usr/bin/env bash
# Optional LOCAL helper: outputs can contain identifiers. Review and redact before publishing.
set -euo pipefail
printf '%s\n' 'NetivoVPN verification collection (NOT automatically safe to publish)'
date -u '+UTC timestamp: %Y-%m-%dT%H:%M:%SZ'
uname -srm
printf '\nWG interface state (may contain public keys, endpoints; redact):\n'
if command -v wg >/dev/null 2>&1; then sudo wg show; else echo 'WireGuard tools not installed'; fi
printf '\nIP forwarding:\n'
sysctl net.ipv4.ip_forward || true
printf '\nNo file was uploaded. Sanitize your own captured output manually.\n'
