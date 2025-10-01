# Active Directory Lab — Attacks & Detections

## Goals
- Build a minimal AD domain and generate realistic authentication telemetry.
- Simulate common attack paths and detect them in the SIEM.
- Map findings to MITRE ATT&CK and document containment steps.

## Architecture
- **Windows Server (Domain Controller)** — `dc01.lab.local`
- **Windows 11 Client** — `win11-01.lab.local`
- **Kali Attacker**
- **SIEM** — Wazuh/ELK VM with 2 NICs (Host-Only + Shared)

> Networking: Place DC, Win11, Kali, and SIEM on **Host-Only**. Add **Shared** to SIEM for updates.

## Build Steps (High-Level)
1. Install Windows Server (ARM on Parallels) → promote to DC (`lab.local`), create users/OUs/GPOs.
2. Join Windows 11 client to domain.
3. Install Wazuh agent (or Winlogbeat/Filebeat) on DC and client → verify logs in SIEM.
4. Enable advanced logging (PowerShell, Security audit, Sysmon optional).

## Attack Simulations (Examples)
- **Password spraying / brute force** (ATT&CK T1110)
- **Kerberoasting** (T1558.003) — enumerate SPNs, request TGS, crack offline
- **Suspicious PowerShell** download cradle (T1059.001)
- **Credential dumping** with LSASS access attempts (T1003)

## Detections & Validations
- SIEM correlation for 4625 bursts (failed logons) from a single source.
- Sigma rules for PowerShell `Invoke-WebRequest` or encoded commands.
- Detection notes for unusual 4769 patterns (Kerberos service ticket requests).

## Deliverables
- `ad-setup.md` — step-by-step DC build + client join.
- `attacks-and-detections.md` — commands, logs, Sigma rules, screenshots.
- `screenshots/` — evidence for each detection.
