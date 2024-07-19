# scripts/07-mfa.sh
#!/bin/bash

echo "# ACSC Essential Eight - Multi-factor Authentication" | tee reports/07-mfa-report.md

# Check SSH configuration file for MFA settings
echo "## Checking SSH configuration file for MFA settings..." | tee -a reports/07-mfa-report.md
grep -i "authentication" /etc/ssh/sshd_config >> reports/07-mfa-report.md

# Filter Lynis output for MFA-related settings
echo "## Checking for MFA-related settings using Lynis..." | tee -a reports/07-mfa-report.md
grep -i "authentication" /var/log/lynis.log >> reports/07-mfa-report.md

echo "Multi-factor authentication checks completed."
echo "Results saved in reports/07-mfa-report.md"
