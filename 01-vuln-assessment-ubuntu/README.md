# 🔒 Vulnerability Assessment: Ubuntu VM (DVWA, Juice Shop and Vulhub)

🧠 **Overview**  
Assess multiple intentionally vulnerable apps on Ubuntu using nmap and OpenVAS, then produce a remediation report.

🎯 **Objectives**  
- Deploy DVWA, Juice Shop, and one Vulhub app on Ubuntu (Docker)  
- Scan from Kali using nmap and OpenVAS  
- Prioritise findings by CVSS and provide fixes

🛠 **Tools and Technologies Used**  
- macOS, Parallels Desktop  
- Ubuntu ARM VM (victim), Kali ARM VM (attacker)  
- Docker, DVWA, Juice Shop, Vulhub  
- nmap, OpenVAS (GVM)

🏗 **Environment Setup**  
- Host only network between Kali and Ubuntu  
- DVWA on port 8080, Juice Shop on 3000, Vulhub as per README

🕵️‍♂️ **Process**  
1. Install Docker on Ubuntu  
2. Run DVWA and Juice Shop containers, deploy one Vulhub target  
3. From Kali, `nmap -sC -sV -O -p- <ubuntu-ip> -oA scans/ubuntu_full`  
4. Configure and run OpenVAS scan, export CSV and PDF  
5. Prioritise and write `reports/vuln-assessment-ubuntu.pdf`

📷 **Screenshots**  
- nmap results, OpenVAS dashboard, example critical finding

📄 **Reports / Deliverables**  
- `scans/ubuntu_full.xml`, `reports/vuln-assessment-ubuntu.pdf`

📚 **Key Learnings**  
- Combining manual enumeration with automated scanning  
- Turning scan data into actionable remediation

🔗 **References**  
- DVWA, Juice Shop, Vulhub, OpenVAS docs
