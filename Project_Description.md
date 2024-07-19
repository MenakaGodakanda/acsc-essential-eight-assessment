# ACSC Essential Eight Security Assessment - Version 1

This project conducts a security assessment and audit in line with the ACSC Essential Eight using open-source tools on Ubuntu.

## Features

### 1. Comprehensive Security Assessment:
- Conducts a thorough security assessment based on the ACSC Essential Eight strategies, ensuring your system adheres to best practices and minimizes security risks.

### 2. Script-Based Automation:
- Utilizes shell scripts to automate the assessment process, providing a consistent and repeatable method to evaluate system security across different environments.

### 3. Open Source Tools Integration:
- Leverages powerful open-source security tools like Lynis and AppArmor to perform in-depth checks and enhance system security without additional costs.

### 4. Modular Structure:
- Organized into individual scripts, each targeting a specific area of the ACSC Essential Eight, allowing for easy updates, maintenance, and customization.

### 5. Detailed Reporting:
- Generates detailed markdown reports for each assessment script, summarizing findings and providing actionable recommendations to improve system security.

### 6. Compliance Verification:
- Helps verify compliance with security standards and best practices, aiding in meeting regulatory requirements and improving overall security posture.

### 7. User-Friendly Execution:
- Provides clear and straightforward instructions for running each script, making it accessible even for users with limited security expertise.

### 8. Extensibility:
- Designed to be extensible, allowing users to add new checks or modify existing ones to tailor the assessment to their specific security needs.

## Coding

### Application Control Script (`01-application-control.sh`)

#### 1. Shebang Line
- This line specifies that the script should be run using the Bash shell.

#### 2. Create Report Header
- This command creates a header for the report and saves it in `reports/01-application-control-report.md`.
- `echo` prints the header text.
- `| tee` redirects the output to both the terminal and the specified file.

#### 3. Check for Unauthorized Applications
- The first command prints a subheader indicating that the script is checking for unauthorized applications.
  - `| tee -a` appends this text to the report file.
- The second command searches for lines containing the word "Unauthorized" (case-insensitive due to `-i`) in the `lynis-report.dat` file.
  - `>>` appends the results to `reports/01-application-control-report.md`.

#### 4. Check Status of Unauthorized Applications
- The first command prints a subheader indicating that the script is checking the status of unauthorized applications.
  - `| tee -a` appends this text to the report file.
- The second command runs the `apparmor_status` command, which provides the status of AppArmor profiles and their current enforcement status.
  - `>>` appends the results to `reports/01-application-control-report.md`.

#### 5. Completion Message
- These commands print messages to the terminal indicating that the application control checks have been completed and the results have been saved to the report file.

### Patch Application Script (`02-patch-applications.sh`)

#### 1. Shebang Line
- This line specifies that the script should be run using the Bash shell.

#### 2. Create Report Header
- This command creates a header for the report and saves it in `reports/02-patch-applications-report.md`.
- `echo` prints the header text.
- `| tee` redirects the output to both the terminal and the specified file.

#### 3. Check for Application Patches
- The first command prints a subheader indicating that the script is checking for application patches.
  - `| tee -a` appends this text to the report file.
- The second command updates package lists and lists upgradable packages.
  - `apt update`: This command updates the local package index to ensure that the package manager has the latest information about available packages and their versions.
  - `&`&: Ensures that the next command (`apt list --upgradable`) runs only if the `apt update` command is successful.
  - `apt list --upgradable`: Lists all the packages that have available updates.
  - `>> reports/02-patch-applications-report.md`: Appends the output of the `apt list --upgradable` command to the `reports/02-patch-applications-report.md` file.

#### 4. Check for Available Updates
- The first command prints a subheader indicating that the script is checking for available updates.
  - `| tee -a` appends this text to the report file.
- The second command is to search for "Available Updates" in the Lynis report.
  - `grep -i "available updates" /var/log/lynis-report.dat`: Searches for lines containing the case-insensitive phrase "available updates" in the Lynis report located at `/var/log/lynis-report.dat`.
  - `>> reports/02-patch-applications-report.md`: Appends the matching lines to the `reports/02-patch-applications-report.md` file.

#### 5. Review Installed Packages and Updates
- The first command prints a subheader indicating that the script is checking for installed packages and updates.
  - `| tee -a` appends this text to the report file.
- The second command is to search for "Package" in the Lynis report.
  - `grep -i "package" /var/log/lynis-report.dat`: Searches for lines containing the case-insensitive word "package" in the Lynis report.
  - `>> reports/02-patch-applications-report.md`: Appends the matching lines to the `reports/02-patch-applications-report.md` file.

#### 6. Completion Message
- These commands print messages to the terminal indicating that the patch applications checks have been completed and the results have been saved to the report file.

### Macro Settings Script (`03-macro-settings.sh`)

#### 1. Shebang Line
- This line specifies that the script should be run using the Bash shell.

#### 2. Create Report Header
- This command creates a header for the report and saves it in `reports/03-macro-settings-report.md`.
- `echo` prints the header text.
- `| tee` redirects the output to both the terminal and the specified file.

#### 3. Check for LibreOffice Macro Settings
- The first command prints a subheader indicating that the script is checking for LibreOffice macro settings.
  - `| tee -a` appends this text to the report file.
- The second command searches searches for any settings related to "macro" in the LibreOffice configuration file, which might indicate whether macros are enabled or configured securely.
  - `grep -i 'macro'`: Searches for the word "macro" (case-insensitive due to `-i`).
  - `/home/$SUDO_USER/.config/libreoffice/4/user/registrymodifications.xcu`: The file path for the LibreOffice user configuration file.
  - `$SUDO_USER`: The environment variable that holds the username of the user who invoked `sudo`.
  - `>> reports/03-macro-settings-report.md`: Appends the results to `reports/03-macro-settings-report.md`.

#### 4. Completion Message
- These commands print messages to the terminal indicating that the LibreOffice macros checks have been completed and the results have been saved to the report file.

### User Application Hardening Script (`04-user-app-hardening.sh`)

#### 1. Shebang Line
- This line specifies that the script should be run using the Bash shell.

#### 2. Create Report Header
- This command creates a header for the report and saves it in `reports/04-user-app-hardening-report.md`.
- `echo` prints the header text.
- `| tee` redirects the output to both the terminal and the specified file.

#### 3. Check Password Quality Configuration
- The first command prints a subheader indicating that the script is checking for password policies.
  - `| tee -a` appends this text to the report file.
- The second command examines the `pwquality.conf` file, which contains password quality requirements, ensuring that it is properly configured.
  - `grep -v '^#' /etc/security/pwquality.conf`: Filters out comment lines (those starting with `#`).
  - `grep -v '^$'`: Filters out empty lines.
  - `|`: Pipes the output from the first `grep` to the second `grep`.
  - `>> reports/04-user-app-hardening-report.md`: Appends the results to `reports/04-user-app-hardening-report.md`.

#### 4. Check File Permissions of `/etc/passwd`
- The first command prints a subheader indicating that the script is checking for file permissions and ownership of `/etc/passwd`.
  - `| tee -a` appends this text to the report file.
- The second command checks the file permissions and ownership of the `/etc/passwd` file.
  - `ls -l /etc/passwd`: Lists the detailed file information for `/etc/passwd`.
  - `>> reports/04-user-app-hardening-report.md`: Appends the output to `reports/04-user-app-hardening-report.md`.

#### 5. Check File Permissions of `/etc/shadow`
- The first command prints a subheader indicating that the script is checking for file permissions and ownership of `/etc/shadow`.
  - `| tee -a` appends this text to the report file.
- The second command checks the file permissions and ownership of the `/etc/shadow` file.
  - `ls -l /etc/shadow`: Lists the detailed file information for `/etc/shadow`.
  - `>> reports/04-user-app-hardening-report.md`: Appends the output to `reports/04-user-app-hardening-report.md`.

#### 6. Check for Hardening Settings in `limits.conf`
- The first command prints a subheader indicating that the script is checking for user application hardening.
  - `| tee -a` appends this text to the report file.
- The second command searches for any hardening settings in the `limits.conf` file.
  - `grep -i 'hardening'`: Searches for the word "hardening" (case-insensitive).
  - `/etc/security/limits.conf`: The configuration file being checked.
  - `>> reports/04-user-app-hardening-report.md`: Appends the results to `reports/04-user-app-hardening-report.md`.

#### 7. Check for Hardening Recommendations in Lynis Report
- The first command prints a subheader indicating that the script is checking for hardening recommendations.
  - `| tee -a` appends this text to the report file.
- The second command searches the Lynis report for any recommendations or findings related to "hardening".
  - `grep -i "hardening"`: Searches for the word "hardening" (case-insensitive).
  - `/var/log/lynis-report.dat`: The Lynis report file.
  - `>> reports/04-user-app-hardening-report.md`: Appends the results to `reports/04-user-app-hardening-report.md`.

#### 8. Completion Message
- These commands print messages to the terminal indicating that the user application hardening checks have been completed and the results have been saved to the report file.

### Admin Privileges Script (`05-admin-privileges.sh`)

#### 1. Shebang Line
- This line specifies that the script should be run using the Bash shell.

#### 2. Create Report Header
- This command creates a header for the report and saves it in `reports/05-admin-privileges-report.md`.
- `echo` prints the header text.
- `| tee` redirects the output to both the terminal and the specified file.

#### 3. Search for `sudo` in Lynis Log
- The first command prints a subheader indicating that the script is checking for sudo information.
  - `| tee -a` appends this text to the report file.
- The second command searches for occurrences of the term `sudo` in the Lynis log, which might indicate sudo usage or configurations related to administrative privileges.
  - `grep -i "sudo"`: Searches for the term `sudo` (case-insensitive) in `/var/log/lynis.log`.
  - `>> reports/05-admin-privileges-report.md`: Appends the results to `reports/05-admin-privileges-report.md`.

#### 4. Search for `admin` in Lynis Log
- The first command prints a subheader indicating that the script is checking for admin information.
  - `| tee -a` appends this text to the report file.
- The second command searches for occurrences of the term `admin` in the Lynis log, which might indicate administrative actions or configurations.
  - `grep -i "admin"`: Searches for the term `admin` (case-insensitive) in `/var/log/lynis.log`.
  - `>> reports/05-admin-privileges-report.md`: Appends the results to `reports/05-admin-privileges-report.md`.

#### 5. Search for `privilege` in Lynis Log
- The first command prints a subheader indicating that the script is checking for privilege information.
  - `| tee -a` appends this text to the report file.
- The second command searches for occurrences of the term `privilege` in the Lynis log, which might indicate privilege-related actions or configurations.
  - `grep -i "admin"`: Searches for the term `privilege` (case-insensitive) in `/var/log/lynis.log`.
  - `>> reports/05-admin-privileges-report.md`: Appends the results to `reports/05-admin-privileges-report.md`.

#### 6. Search for `user` in Lynis Log
- The first command prints a subheader indicating that the script is checking for user information.
  - `| tee -a` appends this text to the report file.
- The second command searches for occurrences of the term `user` in the Lynis log, which might indicate user-related actions or configurations.
  - `grep -i "user"`: Searches for the term `user` (case-insensitive) in `/var/log/lynis.log`.
  - `>> reports/05-admin-privileges-report.md`: Appends the results to `reports/05-admin-privileges-report.md`.

#### 7. Extract Members of `sudo` Group
- The first command prints a subheader indicating that the script is checking for users with sudo privileges.
  - `| tee -a` appends this text to the report file.
- The second command extracts the members of the "sudo" group from the `/etc/group` file.
  - `grep -Po '^sudo.+:\K.*$'`: Uses a Perl-compatible regular expression to find the `sudo` group entry and extract the list of group members.
  - `>> reports/05-admin-privileges-report.md`: Appends the results to `reports/05-admin-privileges-report.md`.

#### 8. List Members of `sudo` Group
- The first command prints a subheader indicating that the script is checking for administrative privileges.
  - `| tee -a` appends this text to the report file.
- The second command retrieves and lists members of the `sudo` group using getent.
  - `getent group sudo`: Retrieves the "sudo" group entry.
  - `cut -d: -f4`: Cuts and extracts the fourth field (the list of group members) using `:` as the delimiter.
  - `>> reports/05-admin-privileges-report.md`: Appends the results to `reports/05-admin-privileges-report.md`.

#### 9. Completion Message
- These commands print messages to the terminal indicating that the admin privileges checks have been completed and the results have been saved to the report file.

