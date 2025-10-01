# AD Setup — Step-by-Step

1. **Windows Server Install (Parallels, ARM)**  
   - Create VM → 2 vCPU, 6–8 GB RAM (adjust as needed).  
   - Set static IP on Host-Only NIC (e.g., 10.10.10.10/24).

2. **Promote to Domain Controller**  
   - Install AD DS → new forest `lab.local`.  
   - Create OUs: `Lab Users`, `Lab Admins`, `Servers`, `Workstations`.

3. **Windows 11 Client Join**  
   - Static IP (10.10.10.20/24), DNS → 10.10.10.10.  
   - Join domain → verify Group Policy application.

4. **Logging & Telemetry**  
   - Install Wazuh agent or Winlogbeat.  
   - Enable PowerShell logging + (optional) Sysmon with a minimal config.
