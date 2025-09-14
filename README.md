# Cybersecurity Portfolio

This repository contains practical, lab based cybersecurity projects built on a Parallels environment (Mac, Apple Silicon), using Kali ARM, Ubuntu ARM and Windows 11 ARM.

## Projects

| Project | Description | Link |
|:---|:---|:---|
| **Vulnerability Assessment – Ubuntu VM (DVWA, Juice Shop and Vulhub)** | Conducted vulnerability scans using OpenVAS and nmap against intentionally vulnerable apps (DVWA, Juice Shop, and Vulhub) running on Ubuntu VM, prioritised risks by CVSS, and delivered formal remediation reports. | [View Project](./01-vuln-assessment-ubuntu/) |
| **Web Application Penetration Testing – OWASP Juice Shop** | Identified OWASP Top 10 vulnerabilities using Burp Suite and OWASP ZAP, documented exploitation techniques, and proposed security improvements. | [View Project](./02-web-pentest-juice-shop/) |
| **Active Directory Domain Setup** | Built a Windows Server 2019 AD domain environment from scratch, including user and group policy configurations. | [View Project](./03-ad-setup/) |
| **Active Directory Attack and Hardening** | Mapped attack paths using BloodHound, executed Kerberoasting and password spraying attacks, and applied hardening measures. | [View Project](./04-ad-attack-hardening/) |
| **SIEM Deployment and Log Analysis – Wazuh and ELK** | Deployed Wazuh SIEM and Elastic Stack, ingested Windows and Linux logs, and created custom detection rules for suspicious PowerShell and persistence activities. | [View Project](./05-siem-wazuh/) |
| **Threat Hunting with Sigma Rules** | Used Sigma rules with Wazuh or ELK to hunt for lateral movement, persistence, and credential access in a lab environment. | [View Project](./06-threat-hunting-sigma/) |
| **Incident Response Simulation** | Simulated ransomware like activity in lab, analysed logs, executed detection and containment steps, and produced an incident response report with lessons learned. | [View Project](./07-incident-response-sim/) |
| **Phishing Simulation and Detection** | Built a phishing campaign in a controlled lab, captured credentials, then mitigated using SPF, DKIM, and DMARC. Documented detection with SIEM alerts. | [View Project](./08-phishing-sim-detection/) |
| **Malware Analysis – Static and Dynamic Techniques** | Performed static and behavioural analysis of a safe sample in a controlled environment, extracted indicators of compromise, and produced a short intel report. | [View Project](./09-malware-analysis/) |
| **Cloud Security Lab – AWS or Azure** | Configured cloud resources, reproduced a public bucket misconfiguration, enabled CloudTrail logging, and applied least privilege IAM. | [View Project](./10-cloud-security-aws-azure/) |
| **CTF or TryHackMe Walkthroughs** | Completed and documented 1–2 machines, showing methodology, exploitation, and post exploitation steps. | [View Project](./11-ctf-walkthroughs-optional/) |

> Replace `yourname` with your GitHub username after creating the repository.
