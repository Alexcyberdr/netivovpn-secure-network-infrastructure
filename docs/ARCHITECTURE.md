# Architecture and threat model

## Planned data flow

A client establishes a WireGuard tunnel to a Linux VPS over UDP. An assigned private address routes traffic through the VPS. Host firewall and NAT rules control forwarding to the public network. The server terminates the tunnel; encrypted tunnel transport does **not** imply the destination website's traffic is encrypted end-to-end unless it uses TLS or equivalent.

## Assets

- Client and server private keys (confidential)
- VPS administrator access and SSH credentials (confidential)
- WireGuard configuration and routing policy
- Endpoint availability and firewall state
- Monitoring and operational audit events

## Threats and planned mitigations

| Threat | Proposed mitigation | Evidence required |
|---|---|---|
| Unauthorized administrative access | SSH keys, disable root/password login after verifying key access, update packages | Sanitized `sshd -T` / config review |
| Overly permissive inbound access | Deny inbound by default, permit expected SSH from admin network and WireGuard UDP | Sanitized firewall rules |
| Exposed private key | Tight file permissions, secrets excluded from Git, rotate compromised peers | Permission test / `.gitignore` review |
| DNS leaks | Explicit DNS choice and leak test on actual client | Test results and redacted screenshot |
| Unintentional direct routing | Client kill-switch design and disconnect tests | Platform-specific captured results |
| Uncontrolled logging | Document collection, retention, third-party host telemetry | Written logging inventory / audit |

## Implementation constraints

- Host-side NAT rules must use the real outbound interface, which differs across providers.
- IPv6 requires an explicit policy and tests; IPv4-only examples do not guarantee IPv6 leak protection.
- A 'zero logs' policy requires end-to-end operational review; it cannot be inferred from WireGuard alone.
- BYCOM Android source was a historical commercial template; avoid using or redistributing it in this open repository.
