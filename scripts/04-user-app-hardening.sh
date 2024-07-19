# scripts/04-user-app-hardening.sh
#!/bin/bash

echo "# ACSC Essential Eight - User Application Hardening" | tee reports/04-user-app-hardening-report.md

# Check password policies
echo "## Checking password policies..." | tee -a reports/04-user-app-hardening-report.md
grep -v '^#' /etc/security/pwquality.conf | grep -v '^$' >> reports/04-user-app-hardening-report.md

# Check for file permissions and ownership /etc/passwd
echo "## Checking file permissions and ownership of /etc/passwd..." | tee -a reports/04-user-app-hardening-report.md
ls -l /etc/passwd >> reports/04-user-app-hardening-report.md

# Check for file permissions and ownership /etc/shadow
echo "## File permissions and ownership of /etc/shadow..." | tee -a reports/04-user-app-hardening-report.md
ls -l /etc/shadow >> reports/04-user-app-hardening-report.md

# Check for user application hardening
echo "## Checking user application hardening..." | tee -a reports/04-user-app-hardening-report.md
grep -i 'hardening' /etc/security/limits.conf >> reports/04-user-app-hardening-report.md

# Check Hardening Recommendations
echo "## Checking for hardening recommendations..." | tee -a reports/04-user-app-hardening-report.md
grep -i "hardening" /var/log/lynis-report.dat >> reports/04-user-app-hardening-report.md

echo "User application hardening checks completed."
echo "Results saved in reports/04-user-app-hardening-report.md"
