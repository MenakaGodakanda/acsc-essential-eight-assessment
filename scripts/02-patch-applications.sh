# scripts/02-patch-applications.sh
#!/bin/bash

echo "# ACSC Essential Eight - Patch Applications" | tee reports/02-patch-applications-report.md

# Check Application Patches
echo "## Checking for application patches..." | tee -a reports/02-patch-applications-report.md
apt update && apt list --upgradable >> reports/02-patch-applications-report.md

# Check for Available Updates
echo "## Checking for available updates..." | tee -a reports/02-patch-applications-report.md
grep -i "available updates" /var/log/lynis-report.dat >> reports/02-patch-applications-report.md

# Review Installed Packages and Updates
echo "## Checking installed packages and updates..." | tee -a reports/02-patch-applications-report.md
grep -i "package" /var/log/lynis-report.dat >> reports/02-patch-applications-report.md

echo "Patch applications checks completed."
echo "Results saved in reports/02-patch-applications-report.md"
