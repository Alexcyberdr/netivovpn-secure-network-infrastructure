# NetivoVPN lab evidence

These excerpts come from the project owner's original photos and iPhone screenshots. The crops preserve the visible settings and counters while excluding credentials and public endpoints.

## Cloud infrastructure

The Hetzner Cloud dashboard identifies NetivoVPN and lists one server, one firewall and one network. The network creation form shows the proposed private range `10.0.0.0/16` in `us-east`. Firewall rules and the final subnet assignment require separate verification.

![Project selector on Hetzner Cloud](cloud-project.png)
![Server, firewall and network counts](cloud-inventory.png)
![Private network creation form](network-settings.png)

## Mobile client

The WireGuard app shows NetivoVPN active on demand. The peer view shows both default routes, a 25-second keepalive and 296 bytes sent. The iOS detail page records a connection timer of 1:25. These observations document client state. Verifying an end-to-end tunnel still requires a recent handshake and traffic received from the peer.

![NetivoVPN active on demand in WireGuard](active-profile.png)
![Configured routes, keepalive and sent bytes](peer-counters.png)
![Connection duration displayed by iOS](session-time.png)

See the [validation checklist](../docs/VALIDATION.md) for the outstanding server, routing and DNS tests.
