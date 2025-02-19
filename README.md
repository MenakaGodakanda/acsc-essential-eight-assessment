# ACSC Essential Eight Security Assessment

This project conducts a security assessment and audit in line with the ACSC Essential Eight using open-source tools on Ubuntu.<br>
<a href="https://github.com/MenakaGodakanda/acsc-essential-eight-assessment/blob/main/Project_Description.md">Project Description</a>

## Overview
<img width="1359" alt="Screenshot 2024-07-19 at 12 44 44 PM" src="https://github.com/user-attachments/assets/ac9435da-0bbc-48f3-9799-1fce3a76d7c7">

### Explanation:

#### 01. Application Control
- Prevent unapproved and malicious applications from executing.
- `01-application-control.sh`:
    - Check for unauthorized applications
    - Check the status of unauthorized applications
The output of the `01-application-control.sh` script is saved in the results directory as `01-application-control-report.md`.

#### 02. Patch Applications
- Mitigate vulnerabilities by keeping applications up to date.
- `02-patch-applications.sh`:
    - Check for application patches
    - Check for available updates
    - Review installed packages and updates
- The output of the `02-patch-applications.sh` script is saved in the results directory as `02-patch-applications-report.md`.

#### 03. Configure Microsoft Office Macro Settings
- Prevent the execution of malicious macros.
- `03-macro-settings.sh`:
    - Check for `LibreOffice` macro settings
- The output of the `03-macro-settings.sh` script is saved in the results directory as `03-macro-settings-report.md`.

#### 04. User Application Hardening
- Harden user applications to reduce vulnerabilities.
- `04-user-app-hardening.sh`:
    - Check password quality configuration
    - Check file permissions of `/etc/passwd`
    - Check file permissions of `/etc/shadow`
    - Check for hardening settings in `limits.conf`
    - Check for hardening recommendations in `Lynis Report`
- The output of the `04-user-app-hardening.sh` script is saved in the results directory as `04-user-app-hardening-report.md`.

#### 05. Restrict Administrative Privileges
- Minimize the risk associated with privileged accounts.
- `05-admin-privileges.sh`:
    - Search for sudo in `Lynis Log`
    - Search for admin in `Lynis Log`
    - Search for privilege in `Lynis Log`
    - Search for user in `Lynis Log`
    - Extract members of `sudo` group
    - List members of `sudo` group
- The output of the `05-admin-privileges.sh` script is saved in the results directory as `05-admin-privileges-report.md`.

#### 06. Patch Operating Systems
- Mitigate vulnerabilities by keeping the operating system up to date.
- `06-patch-os.sh`:
    - Search for update in `Lynis Log`
    - Search for patch in `Lynis Log`
    - Check OS patches
    - List upgradable packages
- The output of the `06-patch-os.sh` script is saved in the results directory as `06-patch-os-report.md`.

#### 07. Multi-Factor Authentication
- Strengthen user authentication by implementing multi-factor authentication (MFA).
- `07-mfa.sh`:
    - Search for authentication in SSH Configuration
    - Search for authentication in `Lynis Log`
- The output of the `07-mfa.sh` script is saved in the results directory as `07-mfa-report.md`.

#### 08. Regular Backups
- Ensure data can be recovered in case of incidents like ransomware.
- `08-backups.sh`:
    - Search for backup in `Lynis Log`
    - List contents of `/var/backups` Directory
- The output of the `08-backups.sh` script is saved in the results directory as `08-backups-report.md`.


## Setting Up the Project

### 1. Clone the repository:
```bash
git clone https://github.com/MenakaGodakanda/acsc-essential-eight-assessment.git
cd acsc-essential-eight-assessment
```

### 2. Install Tools:
- **Lynis**: Lynis is a powerful, open-source security auditing tool for Unix-based systems, including Linux and macOS. It helps system administrators and security professionals conduct thorough security assessments and compliance checks on their systems. Lynis performs in-depth scans, checking system configurations, installed software, and available security measures, providing actionable recommendations to improve security. Install Lynis:
    ```bash
    sudo apt install lynis -y
    ```

- **Apparmor**: AppArmor (Application Armor) is a Linux security module that provides mandatory access control (MAC) to enforce restrictions on applications, confining them to limited sets of resources. AppArmor uses profiles to define the permissions and capabilities of individual programs, enhancing system security by preventing unauthorized access. Install Apparmor:
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
![Screenshot 2024-07-19 120929](https://github.com/user-attachments/assets/9108afdb-3462-484c-9150-8d6d6046c4a5)
![Screenshot 2024-07-19 121015](https://github.com/user-attachments/assets/2254aa6b-d532-42d7-8217-522d8e28d402)

- Verify the Lynis report is saved:
The report is saved in the `/var/log/lynis.log` file and a more detailed report is in `/var/log/lynis-report.dat`.
```bash
sudo cat /var/log/lynis.log
```
![Screenshot 2024-07-19 121131](https://github.com/user-attachments/assets/195ae103-df3b-45dd-9b6a-d32afbb70b52)

```bash
sudo cat /var/log/lynis-report.dat
```
![Screenshot 2024-07-19 121207](https://github.com/user-attachments/assets/6e9e28de-2829-4036-8764-f1f6e41a766d)

## Usage

Run each script in the `scripts/` directory to perform the assessment.

### 01. Application Control:
The `01-application-control.sh` script checks for unauthorized applications. Run the script:
```bash
sudo ./scripts/01-application-control.sh
```
![Screenshot 2024-07-19 121400](https://github.com/user-attachments/assets/5b56e3ac-83d8-4408-b4d8-851c0f96d5a8)

### 02. Patch Applications:
The `02-patch-applications.sh` script checks if applications are patched. Run the script:
```bash
sudo ./scripts/02-patch-applications.sh
```
![Screenshot 2024-07-19 123404](https://github.com/user-attachments/assets/a1de3a86-0f5a-45fa-bf00-d0b73ae02676)

### 03. Microsoft Office Macro Settings:
While Microsoft Office isn't typically on Linux, the `03-macro-settings.sh` script simulates checking LibreOffice macro settings. Run the script:
```bash
sudo ./scripts/03-macro-settings.sh
```
![Screenshot 2024-07-19 121407](https://github.com/user-attachments/assets/d114699e-86b3-4103-a0d6-647374a98fbc)

### 04. User Application Hardening:
The `04-user-app-hardening.sh` script checks secure configurations. Run the script:
```bash
sudo ./scripts/04-user-app-hardening.sh
```
![Screenshot 2024-07-19 121422](https://github.com/user-attachments/assets/87e00da4-f8b6-4a9f-8969-253de57611b7)

### 05. Restrict Administrative Privileges
The `05-admin-privileges.sh` script checks for users with administrative privileges. Run the script:
```bash
sudo ./scripts/05-admin-privileges.sh
```
![Screenshot 2024-07-19 121442](https://github.com/user-attachments/assets/3a0bf3e9-9c5a-4bd8-bce1-c181ab2020e3)

### 06. Patch Operating Systems
The `06-patch-os.sh` script checks the OS is patched. Run the script:
```bash
sudo ./scripts/06-patch-os.sh
```
![Screenshot 2024-07-19 121504](https://github.com/user-attachments/assets/58e27a81-7962-41f3-8227-6488d1dede8d)

### 07. Multi-Factor Authentication:
The `07-mfa.sh` script checks if MFA is enabled. Run the script:
```bash
sudo ./scripts/07-mfa.sh
```
![Screenshot 2024-07-19 121525](https://github.com/user-attachments/assets/262f00fb-e90f-4115-b0c4-e778e4879ec5)

### 08. Regular Backups:
The `08-backups.sh` script checks for the existence of regular backups. Run the script:
```bash
sudo ./scripts/08-backups.sh
```
![Screenshot 2024-07-19 121538](https://github.com/user-attachments/assets/5c94bea6-3efb-4e9c-b069-ecd1cb8381a3)

## Check the Results
Check the reports in the `reports` directory. Each script has generated a report as below: <br><br>
![Screenshot 2024-07-19 125208](https://github.com/user-attachments/assets/3364f85d-c34f-458f-81b2-82b18d6b5fb3)

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
