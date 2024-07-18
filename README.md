# ACSC Essential Eight Security Assessment

This project conducts a security assessment and audit in line with the ACSC Essential Eight using open-source tools on Ubuntu.

## Overview
<img width="1359" alt="Screenshot 2024-07-19 at 3 17 30 AM" src="https://github.com/user-attachments/assets/f89e1ead-cf8a-492d-adca-50f07d2b144a">

### Explanation:

1. **Application Control**: Prevent unapproved and malicious applications from executing.
2. **Patch Applications**: Mitigate vulnerabilities by keeping applications up to date.
3. **Configure Microsoft Office Macro Settings**: Prevent the execution of malicious macros.
4. **User Application Hardening**: Harden user applications to reduce vulnerabilities.
5. **Restrict Administrative Privileges**: Minimize the risk associated with privileged accounts.
6. **Patch Operating Systems**: Mitigate vulnerabilities by keeping the operating system up to date.
7. **Multi-Factor Authentication**: Strengthen user authentication by implementing multi-factor authentication (MFA).
8. **Regular Backups**: Ensure data can be recovered in case of incidents like ransomware.

## Setting Up the Project

### 1. Clone the repository:
```bash
git clone https://github.com/MenakaGodakanda/acsc-essential-eight-assessment.git
cd acsc-essential-eight-assessment
```

### 2. Install Tools:
- **Lynis**: Lynis is a powerful, open-source security auditing tool for Unix-based systems, including Linux and macOS. It helps system administrators and security professionals conduct thorough security assessments and compliance checks on their systems. Lynis performs in-depth scans, checking system configurations, installed software, and available security measures, providing actionable recommendations to improve security:
    ```bash
    sudo apt install lynis -y
    ```

- **Apparmor**: AppArmor (Application Armor) is a Linux security module that provides mandatory access control (MAC) to enforce restrictions on applications, confining them to limited sets of resources. AppArmor uses profiles to define the permissions and capabilities of individual programs, enhancing system security by preventing unauthorized access:
    ```bash
    sudo apt install apparmor -y
    ```
    
### 3. Make the scripts executable:
```bash
chmod +x scripts/*.sh
```

### 4. Run a comprehensive security audit:

- Run a full system audit with Lynis:
```bash
sudo lynis audit system
```

- Verify the Lynis report is saved:
```bash
sudo cat /var/log/lynis.log
sudo cat /var/log/lynis-report.dat
```

The report is saved in the `/var/log/lynis.log` file and a more detailed report is in `/var/log/lynis-report.dat`.

## Usage

Run each script in the `scripts/` directory to perform the assessment.

### 01. Application Control:
The `01-application-control.sh` script checks for unauthorized applications. Run the script:
```bash
sudo ./scripts/01-application-control.sh
```

### 02. Patch Applications:
The `02-patch-applications.sh` script checks if applications are patched. Run the script:
```bash
sudo ./scripts/02-patch-applications.sh
```

### 03. Microsoft Office Macro Settings:
While Microsoft Office isn't typically on Linux, the script simulates checking LibreOffice macro settings. The `03-macro-settings.sh` script checks for macro settings. Run the script:
```bash
sudo ./scripts/03-macro-settings.sh
```

### 04. User Application Hardening:
The `04-user-app-hardening.sh` script checks secure configurations. Run the script:
```bash
sudo ./scripts/04-user-app-hardening.sh
```

### 05. Restrict Administrative Privileges
The `05-admin-privileges.sh` script checks for users with administrative privileges. Run the script:
```bash
sudo ./scripts/05-admin-privileges.sh
```

### 06. Patch Operating Systems
The `06-patch-os.sh` script checks the OS is patched. Run the script:
```bash
sudo ./scripts/06-patch-os.sh
```

### 07. Multi-Factor Authentication:
The `07-mfa.sh` script checks if MFA is enabled. Run the script:
```bash
sudo ./scripts/07-mfa.sh
```

### 08. Regular Backups:
The `08-backups.sh` script checks for the existence of regular backups. Run the script:
```bash
sudo ./scripts/08-backups.sh
```

## Check the Results
Check the reports in the `reports` directory. Each script has generated a report as below: <br><br>

## Project Structure
```
acsc-essential-eight-assessment/
├── scripts/
│   ├── 01-application-control.sh
│   ├── 02-patch-applications.sh
│   ├── 03-macro-settings.sh
│   ├── 04-user-app-hardening.sh
│   ├── 05-admin-privileges.sh
│   ├── 06-patch-os.sh
│   ├── 07-mfa.sh
│   ├── 08-backups.sh
├── reports/
│   ├── 01-application-control-report.md
│   ├── 02-patch-applications-report.md
│   ├── 03-macro-settings-report.md
│   ├── 04-user-app-hardening-report.md
│   ├── 05-admin-privileges-report.md
│   ├── 06-patch-os-report.md
│   ├── 07-mfa-report.md
│   ├── 08-backups-report.md
└── README.md
```

## License
This project is licensed under the MIT License.
