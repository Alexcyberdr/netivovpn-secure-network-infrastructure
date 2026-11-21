# Security and disclosure policy

This portfolio contains **no operational keys**. Never commit `privatekey`, `presharedkey`, `.env`, `*.conf` containing live credentials, Android keystores, access tokens, API keys, or live server endpoints.

## Before sharing screenshots

- Mask endpoint/public IPs if sensitive; remove private keys, QR codes, credential fields, customer or peer identifiers.
- Check images for terminal histories, cloud account IDs, emails, billing identifiers and usernames.
- Check text output and git history: removing secrets in a later commit does not erase earlier copies.
- Do not claim 'no logs', anonymity, production reliability, DNS leak protection or kill switch without a recorded validation scope.

## Verification is not an assertion of safety

A WireGuard handshake confirms a peer exchange. It does not by itself prove traffic egress, DNS integrity, security posture, or logging practices.
