# scripts/08-backups.sh
#!/bin/bash

echo "# ACSC Essential Eight - Daily Backups" | tee reports/08-backups-report.md

# Filter the Lynis report for backup-related information
echo "## Checking for backup-related information..." | tee -a reports/08-backups-report.md
grep -i "backup" /var/log/lynis.log >> reports/08-backups-report.md

# Checking for regular backups
echo "## Checking for regular backups..." | tee -a reports/08-backups-report.md
ls /var/backups/ >> reports/08-backups-report.md

echo "Daily backup checks completed."
echo "Results saved in reports/08-backups-report.md"
