# Network Monitoring — Zeek & Suricata

## Goals
- Capture and analyze traffic, generate Zeek logs and Suricata alerts, and correlate with SIEM.

## Architecture
- Ubuntu ARM64 VM with **Zeek** and **Suricata** (Docker recommended on ARM).
- Kali (or attacker) generates scans and simple web attacks.
- Optional: Forward alerts/logs into SIEM for a unified view.

## Lab Flow
1. Capture baseline traffic.
2. Generate noisy scans (nmap) and simple attacks (nikto, bad HTTP requests).
3. Review Zeek logs (conn, dns, http) and Suricata alerts.
4. Create 1–2 Sigma rules or SIEM correlations based on network evidence.

## Deliverables
- `config-files/` for Zeek/Suricata (sanitized samples).
- `screenshots/` showing alerts/logs and correlations.
