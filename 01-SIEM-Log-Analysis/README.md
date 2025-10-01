# SIEM + Log Analysis (Wazuh / ELK)

## Goals
- Centralize Windows + Linux logs.
- Write custom detections and showcase dashboards.
- Demonstrate triage and alert-handling flow.

## Architecture
- **Ubuntu Server ARM64** — Wazuh manager (or ELK stack via Docker)
- **Windows 11 ARM** — endpoint with agent
- **Ubuntu/Kali** — attacker or noisy host
- **Parallels Networking** — Host-Only lab; SIEM has dual NICs (Host-Only + Shared)

## Setup Paths
- **Option A: Wazuh All-in-One (Docker)** — ARM-friendly images.
- **Option B: Native ELK + Beats** — Filebeat/Winlogbeat to Elasticsearch/Logstash.

## Test Data
- Generate failed logons, PowerShell activity, and web server logs.
- Use Atomic Red Team tests where possible (choose ARM-safe tests).

## Detections
- Brute-force burst on a single user from single source.
- Suspicious PowerShell with `-enc` or `Invoke-WebRequest` patterns.
- New admin creation outside change window.

## Dashboards
- Authentication Overview
- Endpoint Process Tree (if Sysmon ingested)
- Security Alerts over time

## Deliverables
- `detection-rules/` — custom rules (Wazuh or Elastic DSL).
- `screenshots/` — dashboards and alert drill-downs.
- `scripts/` — helper scripts to simulate events.
