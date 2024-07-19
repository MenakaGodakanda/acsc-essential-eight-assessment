# scripts/03-macro-settings.sh
#!/bin/bash

echo "# ACSC Essential Eight - Libreoffice Macros Checks" | tee reports/03-macro-settings-report.md

echo "## Checking LibreOffice macro settings..." | tee -a reports/03-macro-settings-report.md
grep -i 'macro' /home/$SUDO_USER/.config/libreoffice/4/user/registrymodifications.xcu >> reports/03-macro-settings-report.md

echo "Libreoffice macros checks completed."
echo "Results saved in reports/03-macro-settings-report.md"
