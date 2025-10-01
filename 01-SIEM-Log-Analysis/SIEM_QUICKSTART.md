# Quick Start — SIEM (Wazuh) on Ubuntu (10.10.10.30)

1. SSH into the Ubuntu SIEM VM (10.10.10.30).
2. Ensure Docker is installed (recommended):
   curl -fsSL https://get.docker.com | sudo sh
3. Copy `docker-compose.yml` to ~/wazuh and run:
   mkdir -p ~/wazuh && cp docker-compose.yml ~/wazuh/docker-compose.yml && cd ~/wazuh
   docker compose up -d
4. Open the dashboard from your host machine browser:
   http://10.10.10.30:5601
5. On Windows endpoint (10.10.10.50) install Wazuh agent and enroll to manager address 10.10.10.30
6. Generate test events using scripts in `scripts/` folder (copy to Windows VM).
