# scripts/05-admin-privileges.sh
#!/bin/bash

echo "# ACSC Essential Eight - Restrict Admin Privileges" | tee reports/05-admin-privileges-report.md

# Check admin privileges information
echo "## Checking sudo information..." | tee -a reports/05-admin-privileges-report.md
grep -i "sudo" /var/log/lynis.log >> reports/05-admin-privileges-report.md
echo "## Checking admin information..." | tee -a reports/05-admin-privileges-report.md
grep -i "admin" /var/log/lynis.log >> reports/05-admin-privileges-report.md
echo "## Checking privilege information..." | tee -a reports/05-admin-privileges-report.md
grep -i "privilege" /var/log/lynis.log >> reports/05-admin-privileges-report.md
echo "## Checking user information..." | tee -a reports/05-admin-privileges-report.md
grep -i "user" /var/log/lynis.log >> reports/05-admin-privileges-report.md

# Check users with sudo privileges
echo "## Users with sudo privileges:" | tee -a reports/05-admin-privileges-report.md
grep -Po '^sudo.+:\K.*$' /etc/group >> reports/05-admin-privileges-report.md

# Check administrative privileges
echo "## Checking for administrative privileges..." | tee -a reports/05-admin-privileges-report.md
getent group sudo | cut -d: -f4 >> reports/05-admin-privileges-report.md

echo "Restrict Admin Privileges checks completed."
echo "Results saved in reports/05-admin-privileges-report.md"

