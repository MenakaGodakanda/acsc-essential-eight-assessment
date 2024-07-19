# scripts/01-application-control.sh
#!/bin/bash

echo "# ACSC Essential Eight - Application Control" | tee reports/01-application-control-report.md

# Check Unauthorized Applications
echo "## Checking for unauthorized applications..." | tee -a reports/01-application-control-report.md
grep -i "Unauthorized" /var/log/lynis-report.dat >> reports/01-application-control-report.md

# Status Unauthorized Applications
echo "## Checking the status of unauthorized applications..." | tee -a reports/01-application-control-report.md
apparmor_status >> reports/01-application-control-report.md

echo "Application control checks completed."
echo "Results saved in reports/01-application-control-report.md"
