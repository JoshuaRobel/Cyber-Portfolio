# Cybersecurity Portfolio — SOC Analyst Focus

Hi, I'm Josh. This monorepo contains hands-on **blue-team labs** designed for a SOC/IR role.
All projects are reproducible on a **Mac (Apple Silicon) using Parallels** with ARM VMs.

## Projects
1. **01-SIEM-Log-Analysis** — Wazuh/ELK with Windows + Linux agents, detections, dashboards.
2. **02-Active-Directory-Lab** — Windows Server AD, client attacks from Kali, detections in SIEM.
3. **03-Sigma-Rules** — Custom Sigma rules mapped to ATT&CK, with test data and validation.
4. **04-Vulnerability-Management** — Greenbone/OpenVAS scans, triage, and remediation plan.
5. **05-Incident-Response** — NIST 800-61 styled IR reports from simulated incidents.
6. **06-Network-Monitoring** — Zeek + Suricata for network visibility and detections.

## How to Use
- Each folder has a **README** with goals, architecture, SOP steps, and deliverables.
- Screenshots and diagrams live in each project folder under `/screenshots/` (placeholders included).
- Configs/rules/scripts live under `/config-files/`, `/detection-rules/`, or `/scripts/` per project.

## Apple Silicon + Parallels Notes
- Use **ARM64** guest OS images (Ubuntu Server ARM64, Windows 11 ARM).
- Prefer **Docker containers** where possible (many security tools provide ARM images).
- For tools that are **x86-only**, use:  
  - Windows 11 ARM x64 emulation (acceptable for lab demos), or  
  - A small x86_64 cloud VM (optional, only if needed).

## Parallels VM Networking (Recommended)
- **Shared/NAT**: Safe default. VMs can reach the Internet; host can reach VMs via forwarded ports.
- **Host-Only**: Isolated lab network for attack/detection exercises (no Internet). Add a second **Shared** NIC on the SIEM VM if it needs updates.
- **Bridged**: Use sparingly; exposes VMs directly to LAN.

> Typical layout: All lab VMs on **Host-Only**; SIEM VM has **2 NICs** (Host-Only + Shared).

## Repo Conventions
- Diagrams exported to `.png` and kept small (< 1MB).
- Long outputs (scan reports, PCAPs) are summarized in markdown; store large artifacts externally if needed.
- All detections mapped to **MITRE ATT&CK** and linked to **CTI references** where relevant.

---

© 2025 Josh — MIT License
