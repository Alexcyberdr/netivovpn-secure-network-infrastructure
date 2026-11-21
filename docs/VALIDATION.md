# Reproducible validation checklist

**Status: not executed for this repository.** These are procedures and expected indicators, not observed NetivoVPN results.

| Test | Authorized lab command or method | Expected indicator | Actual result | Evidence |
|---|---|---|---|---|
| WG interface | `sudo wg show` | Interface and peer details; a recent handshake after a client connects | NOT RUN | PENDING |
| Interface addresses | `ip -brief addr show wg0` | Interface address matches lab plan | NOT RUN | PENDING |
| Forwarding | `sysctl net.ipv4.ip_forward` | `net.ipv4.ip_forward = 1` if IPv4 forwarding is required | NOT RUN | PENDING |
| Firewall | `sudo ufw status verbose` **or** `sudo nft list ruleset` | Only required access, limited forward/NAT policy | NOT RUN | PENDING |
| Route | `ip route` on client | Expected tunnel route under configured policy | NOT RUN | PENDING |
| Egress | `curl -4 https://ifconfig.me` from client (authorized environment) | Egress differs from direct client IP when full tunnel is intended | NOT RUN | PENDING |
| DNS integrity | Inspect platform resolver and run trusted DNS leak test | Resolver matches the intended policy | NOT RUN | PENDING |
| IPv6 | Client route/leak test | No unprotected IPv6 when full tunnel is required | NOT RUN | PENDING |
| Reconnect/kill switch | Disconnect VPN while monitoring traffic in client lab | Platform-specific behavior meets documented requirements | NOT RUN | PENDING |

## Capture template

For each completed test, record: **UTC timestamp**, sanitized command, environment/platform, redacted output, observed result (PASS / FAIL / INCONCLUSIVE), artifact filename and what the artifact actually proves.

Be careful: `wg show` may expose peer public keys and actual endpoint addresses; remove those before publication. Never run diagnostic commands with secrets displayed for screenshots.
