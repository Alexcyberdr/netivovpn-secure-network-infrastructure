# Historical record and evidence provenance

## May 2025 Android prototype

[Four original project photos](../evidence/README.md#android-prototype-in-android-studio) document project selection on May 10, the project tree and a runtime crash on May 11, and a successful Gradle task in a separate undated photo. An Android VPN session remains unverified.

## Past project discussions (not attached original artifacts)

- October–November 2025: NetivoVPN concept, DigitalOcean VPS, Linux hardening, WireGuard and Android VPN interface.
- 2025-11-09: an earlier chat **described** WireGuard connection screenshots showing a handshake and traffic. The recovered mobile captures show the client state and sent bytes. A handshake and received traffic still need evidence.
- 2025-11-24: project direction shifted away from dependence on BYCOM/BICOM commercial Android templates toward an original UI / WireGuard approach.
- 2026-11-21: documentation and reproducibility materials prepared for a security portfolio. No test on a live NetivoVPN server was performed in this documentation step.

## Claim policy

Only test results backed by a sanitized screenshot, timestamped terminal output, an authorized lab capture, or related original artifact will be listed as **verified**. Retrospective chat descriptions are background context, **not** substitute evidence.

## Evidence backlog

- [x] Hetzner project inventory and private-network setup. See the [capture index](../evidence/README.md).
- [ ] `wg show` output with latest handshake and transfer (redacted)
- [ ] Server and client address/routing tests (redacted)
- [ ] Public egress IP test without exposing real endpoint in Git
- [ ] Firewall and SSH hardening outputs (redacted)
- [ ] DNS leak and IPv6 route tests
- [ ] Reconnection and kill-switch behavior per platform
- [x] Android Studio and runtime screenshots
- [ ] Android APK provenance, crash diagnosis and successful retest
