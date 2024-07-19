# scripts/06-patch-os.sh
#!/bin/bash

echo "# ACSC Essential Eight - Patch Operating System" | tee reports/06-patch-os-report.md

# Filter the report for update and patch information
echo "## Checking update information..." | tee -a reports/06-patch-os-report.md
grep -i "update" /var/log/lynis.log >> reports/06-patch-os-report.md
echo "## Checking patch information..." | tee -a reports/06-patch-os-report.md
grep -i "patch" /var/log/lynis.log >> reports/06-patch-os-report.md

# Update the package lists and upgrade the OS
echo "## Checking for OS patches..." | tee -a reports/06-patch-os-report.md
sudo apt update && sudo apt upgrade -y >> reports/06-patch-os-report.md

# List the packages that were upgraded
echo "## Checking upgraded OS patches..." | tee -a reports/06-patch-os-report.md
upgraded_packages=$(apt list --upgradable) >> reports/06-patch-os-report.md

echo "Patch Operating System checks completed."
echo "Results saved in reports/06-patch-os-report.md"
