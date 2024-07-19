# ACSC Essential Eight - Restrict Admin Privileges
## Checking sudo information...
2024-07-19 12:08:55 Result: set-uid binaries: /usr/bin/chfn /usr/bin/chsh /usr/bin/fusermount /usr/bin/fusermount3 /usr/bin/gpasswd /usr/bin/mount /usr/bin/newgrp /usr/bin/passwd /usr/bin/pkexec /usr/bin/sg /usr/bin/su /usr/bin/sudo /usr/bin/sudoedit /usr/bin/ubuntu-core-launcher /usr/bin/umount /usr/bin/vmware-user /usr/bin/vmware-user-suid-wrapper /usr/sbin/pppd 
2024-07-19 12:08:55 Binary: /bin/cvtsudoers
2024-07-19 12:08:56 Binary: /bin/sudo
2024-07-19 12:08:56 Binary: /bin/sudoedit
2024-07-19 12:08:56 Binary: /bin/sudoreplay
2024-07-19 12:08:57 Binary: /sbin/sudo_logsrvd
2024-07-19 12:08:57 Binary: /sbin/sudo_sendlog
2024-07-19 12:08:57 Binary: /sbin/visudo
2024-07-19 12:08:57 Binary: /usr/bin/cvtsudoers
2024-07-19 12:08:58 Binary: /usr/bin/sudo
2024-07-19 12:08:58 Binary: /usr/bin/sudoedit
2024-07-19 12:08:58 Binary: /usr/bin/sudoreplay
2024-07-19 12:08:59 Binary: /usr/sbin/sudo_logsrvd
2024-07-19 12:08:59 Binary: /usr/sbin/sudo_sendlog
2024-07-19 12:08:59 Binary: /usr/sbin/visudo
2024-07-19 12:09:04 Performing test ID AUTH-9250 (Checking sudoers file)
2024-07-19 12:09:04 Test: checking presence /etc/sudoers
2024-07-19 12:09:04 Result: found file (/etc/sudoers)
2024-07-19 12:09:04 Test: checking presence /usr/local/etc/sudoers
2024-07-19 12:09:04 Result: file /usr/local/etc/sudoers not found
2024-07-19 12:09:04 Test: checking presence /usr/pkg/etc/sudoers
2024-07-19 12:09:04 Result: file /usr/pkg/etc/sudoers not found
2024-07-19 12:09:04 Result: sudoers file found (/etc/sudoers)
2024-07-19 12:09:04 Performing test ID AUTH-9252 (Check ownership and permissions for sudo configuration files)
2024-07-19 12:09:04 Test: checking drop-in directory (/etc/sudoers.d)
2024-07-19 12:09:04 Result: directory /etc/sudoers.d has possibly unsafe permissions
2024-07-19 12:09:04 Result: directory /etc/sudoers.d ownership OK
2024-07-19 12:09:04 Test: checking file (/etc/sudoers)
2024-07-19 12:09:04 Result: file /etc/sudoers permissions OK
2024-07-19 12:09:04 Result: file /etc/sudoers ownership OK
2024-07-19 12:09:04 Test: checking file (/etc/sudoers.d/README)
2024-07-19 12:09:04 Result: file /etc/sudoers.d/README permissions OK
2024-07-19 12:09:04 Result: file /etc/sudoers.d/README ownership OK
2024-07-19 12:09:04 Found file: /etc/pam.d/sudo
2024-07-19 12:09:04 Found file: /etc/pam.d/sudo-i
2024-07-19 12:09:06 Found package: gnome-sudoku (version: 1:42.0-1)
2024-07-19 12:09:09 Found package: sudo (version: 1.9.9-1ubuntu2.4)
2024-07-19 12:09:31 Result: Unconfined process: unconfined:3452494:sudo
2024-07-19 12:09:31 Result: Unconfined process: unconfined:3452495:sudo
2024-07-19 12:09:31 Result: Unconfined process: unconfined:3947308:sudo
2024-07-19 12:09:31 Result: Unconfined process: unconfined:3947310:sudo
## Checking admin information...
2024-07-19 12:08:57 Binary: /sbin/lpadmin
2024-07-19 12:08:59 Binary: /usr/sbin/lpadmin
## Checking privilege information...
2024-07-19 12:09:08 Found package: policykit-desktop-privileges (version: 0.21)
2024-07-19 12:09:19 Found deleted file: /memfd:mozilla-ipc(Privilege)
2024-07-19 12:09:32 Result: sysctl key kernel.unprivileged_bpf_disabled has a different value than expected in scan profile. Expected=1, Real=2
2024-07-19 12:09:32 Result: key security.bsd.unprivileged_proc_debug does not exist on this machine
2024-07-19 12:09:32 Result: key security.bsd.unprivileged_read_msgbuf does not exist on this machine
## Checking user information...
2024-07-19 12:08:54 Plugin 'users' enabled according profile (/etc/lynis/default.prf)
2024-07-19 12:08:55 Result: set-uid binaries: /usr/bin/chfn /usr/bin/chsh /usr/bin/fusermount /usr/bin/fusermount3 /usr/bin/gpasswd /usr/bin/mount /usr/bin/newgrp /usr/bin/passwd /usr/bin/pkexec /usr/bin/sg /usr/bin/su /usr/bin/sudo /usr/bin/sudoedit /usr/bin/ubuntu-core-launcher /usr/bin/umount /usr/bin/vmware-user /usr/bin/vmware-user-suid-wrapper /usr/sbin/pppd 
2024-07-19 12:08:55 Result: set-gid binaries: /usr/bin/chage /usr/bin/crontab /usr/bin/expiry /usr/bin/ssh-agent /usr/sbin/pam_extrausers_chkpwd /usr/sbin/unix_chkpwd 
2024-07-19 12:08:55 Binary: /bin/fuser
2024-07-19 12:08:55 Binary: /bin/fusermount
2024-07-19 12:08:55 Binary: /bin/fusermount3
2024-07-19 12:08:56 Binary: /bin/ntfsusermap
2024-07-19 12:08:56 Binary: /bin/systemd-sysusers
2024-07-19 12:08:56 Binary: /bin/users
2024-07-19 12:08:56 Binary: /bin/vmware-user
2024-07-19 12:08:56 Binary: /bin/vmware-user-suid-wrapper
2024-07-19 12:08:56 Binary: /bin/xdg-user-dir
2024-07-19 12:08:56 Binary: /bin/xdg-user-dirs-gtk-update
2024-07-19 12:08:56 Binary: /bin/xdg-user-dirs-update
2024-07-19 12:08:56 Binary: /sbin/adduser
2024-07-19 12:08:56 Binary: /sbin/deluser
2024-07-19 12:08:57 Binary: /sbin/newusers
2024-07-19 12:08:57 Binary: /sbin/pam_extrausers_chkpwd
2024-07-19 12:08:57 Binary: /sbin/pam_extrausers_update
2024-07-19 12:08:57 Binary: /sbin/runuser
2024-07-19 12:08:57 Binary: /sbin/useradd
2024-07-19 12:08:57 Binary: /sbin/userdel
2024-07-19 12:08:57 Binary: /sbin/usermod
2024-07-19 12:08:57 Binary: /usr/bin/fuser
2024-07-19 12:08:57 Binary: /usr/bin/fusermount
2024-07-19 12:08:57 Binary: /usr/bin/fusermount3
2024-07-19 12:08:58 Binary: /usr/bin/ntfsusermap
2024-07-19 12:08:58 Binary: /usr/bin/systemd-sysusers
2024-07-19 12:08:58 Binary: /usr/bin/users
2024-07-19 12:08:58 Binary: /usr/bin/vmware-user
2024-07-19 12:08:58 Binary: /usr/bin/vmware-user-suid-wrapper
2024-07-19 12:08:59 Binary: /usr/bin/xdg-user-dir
2024-07-19 12:08:59 Binary: /usr/bin/xdg-user-dirs-gtk-update
2024-07-19 12:08:59 Binary: /usr/bin/xdg-user-dirs-update
2024-07-19 12:08:59 Binary: /usr/sbin/adduser
2024-07-19 12:08:59 Binary: /usr/sbin/deluser
2024-07-19 12:08:59 Binary: /usr/sbin/newusers
2024-07-19 12:08:59 Binary: /usr/sbin/pam_extrausers_chkpwd
2024-07-19 12:08:59 Binary: /usr/sbin/pam_extrausers_update
2024-07-19 12:08:59 Binary: /usr/sbin/runuser
2024-07-19 12:08:59 Binary: /usr/sbin/useradd
2024-07-19 12:08:59 Binary: /usr/sbin/userdel
2024-07-19 12:08:59 Binary: /usr/sbin/usermod
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:00 Suggestion: Set a password on GRUB boot loader to prevent altering boot configuration (e.g. boot in single user mode without password) [test:BOOT-5122] [details:-] [solution:-]
2024-07-19 12:09:00 Found running service: user@1000
2024-07-19 12:09:02 Performing test ID BOOT-5260 (Check single user mode for systemd)
2024-07-19 12:09:02 Test: checking presence sulogin for single user mode
2024-07-19 12:09:02 Result: found sulogin, so single user is protected
2024-07-19 12:09:02 Result: user@1000.service: 9.4 UNSAFE
2024-07-19 12:09:02 Loaded module: xfrm_user
2024-07-19 12:09:04 Action: Performing tests from category: Users, Groups and Authentication
2024-07-19 12:09:04 Performing test ID AUTH-9204 (Check users with an UID of zero)
2024-07-19 12:09:04 Performing test ID AUTH-9234 (Query user accounts)
2024-07-19 12:09:04 Test: Read system users (including root user) from password database (e.g. /etc/passwd)
2024-07-19 12:09:04 Result: found minimal user id specified: 1000
2024-07-19 12:09:04 Linux real users output (ID = 0, or 1000+, but not 65534):
2024-07-19 12:09:04 Real user: root,0
2024-07-19 12:09:04 Real user: mcyber,1000
2024-07-19 12:09:04 Found file: /etc/pam.d/newusers
2024-07-19 12:09:04 Found file: /etc/pam.d/runuser
2024-07-19 12:09:04 Found file: /etc/pam.d/runuser-l
2024-07-19 12:09:04 Found file: /lib/x86_64-linux-gnu/security/pam_extrausers.so
2024-07-19 12:09:04 Found file: /lib/x86_64-linux-gnu/security/pam_localuser.so
2024-07-19 12:09:04 Found file: /lib/x86_64-linux-gnu/security/pam_userdb.so
2024-07-19 12:09:04 Found file: /lib/x86_64-linux-gnu/security/pam_usertype.so
2024-07-19 12:09:04 Performing test ID AUTH-9284 (Check locked user accounts in /etc/passwd)
2024-07-19 12:09:04 Performing test ID AUTH-9286 (Checking user password aging)
2024-07-19 12:09:04 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:04 Skipped test AUTH-9304 (Check single user login configuration)
2024-07-19 12:09:04 Performing test ID AUTH-9308 (Check single user login configuration)
2024-07-19 12:09:04 Result: sulogin was found, which is a good measure to protect single user mode
2024-07-19 12:09:04 Result: sulogin was found, which is a good measure to protect single user mode
2024-07-19 12:09:04 Result: option set, password is needed at single user mode boot
2024-07-19 12:09:05 Found package: adduser (version: 3.118ubuntu5)
2024-07-19 12:09:05 Found package: dbus-user-session (version: 1.12.20-2ubuntu4.1)
2024-07-19 12:09:06 Found package: gnome-user-docs (version: 41.5-1ubuntu2)
2024-07-19 12:09:09 Found package: xdg-user-dirs (version: 0.17-2ubuntu4)
2024-07-19 12:09:09 Found package: xdg-user-dirs-gtk (version: 0.10-3build2)
2024-07-19 12:09:18 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:18 Result: iptables  filter  -- INPUTACCEPTFORWARDDROPDOCKERUSERDOCKERISOLATIONSTAGEACCEPTRELATEDESTABLISHEDDOCKERACCEPTACCEPTOUTPUTACCEPTDOCKERDOCKERISOLATIONSTAGEDOCKERISOLATIONSTAGERETURNDOCKERISOLATIONSTAGEDROPRETURNDOCKERUSERRETURN policy is .
2024-07-19 12:09:18 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:18 Test: Checking PermitUserEnvironment in /tmp/lynis.a1f815E5Bb
2024-07-19 12:09:18 Result: Option PermitUserEnvironment found
2024-07-19 12:09:18 Result: Option PermitUserEnvironment value is NO
2024-07-19 12:09:18 Result: OpenSSH option PermitUserEnvironment is configured very well
2024-07-19 12:09:18 Performing test ID SSH-7440 (Check OpenSSH option: AllowUsers and AllowGroups)
2024-07-19 12:09:18 Result: AllowUsers is not set
2024-07-19 12:09:18 Result: SSH has no specific user or group limitation. Most likely all valid users can SSH to this machine.
2024-07-19 12:09:19 Output: File:/var/log/user.log:does_not_exist
2024-07-19 12:09:19 Output: File:/var/log/user.log:exists
2024-07-19 12:09:19 Found logfile: /run/user/1000/speech-dispatcher/log/dummy.log
2024-07-19 12:09:19 Found logfile: /run/user/1000/speech-dispatcher/log/espeak-ng-mbrola.log
2024-07-19 12:09:19 Found logfile: /run/user/1000/speech-dispatcher/log/espeak-ng.log
2024-07-19 12:09:19 Found logfile: /run/user/1000/speech-dispatcher/log/speech-dispatcher.log
2024-07-19 12:09:19 Found deleted file: /var/log/journal/1ebd54baf7784af1bafcc62581148eb8/user-1000@74ea61adf1f447229111e2d156092acd-00000000000305bc-00061d36b3886f60.journal(systemd-j)
2024-07-19 12:09:20 Found an opened logfile that is empty: sd_dummy,/run/user/1000/speech-dispatcher/log/espeak-ng-mbrola.log
2024-07-19 12:09:20 Found an opened logfile that is empty: sd_dummy,/run/user/1000/speech-dispatcher/log/espeak-ng.log
2024-07-19 12:09:20 Found an opened logfile that is empty: sd_espeak,/run/user/1000/speech-dispatcher/log/espeak-ng-mbrola.log
2024-07-19 12:09:20 Found an opened logfile that is empty: sd_espeak,/run/user/1000/speech-dispatcher/log/espeak-ng.log
2024-07-19 12:09:20 Found an opened logfile that is empty: speech-di,/run/user/1000/speech-dispatcher/log/espeak-ng-mbrola.log
2024-07-19 12:09:20 Found an opened logfile that is empty: speech-di,/run/user/1000/speech-dispatcher/log/espeak-ng.log
2024-07-19 12:09:20 Result: Found only 0 key words (5 or more suggested), to warn unauthorized users and could be increased
2024-07-19 12:09:20 Suggestion: Add a legal banner to /etc/issue, to warn unauthorized users [test:BANN-7126] [details:-] [solution:-]
2024-07-19 12:09:20 Result: Found only 0 key words, to warn unauthorized users and could be increased
2024-07-19 12:09:20 Suggestion: Add legal banner to /etc/issue.net, to warn unauthorized users [test:BANN-7130] [details:-] [solution:-]
2024-07-19 12:09:20 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:20 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:20 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:20 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:20 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:20 Performing test ID SCHD-7718 (Check at users)
2024-07-19 12:09:20 Skipped test SCHD-7720 (Check at users)
2024-07-19 12:09:20 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:21 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:22 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:23 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:24 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:25 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:26 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:27 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:28 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Test: check if we can access /usr/share/ca-certificates/mozilla/USERTrust_ECC_Certification_Authority.crt (escaped: /usr/share/ca-certificates/mozilla/USERTrust_ECC_Certification_Authority.crt)
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file /usr/share/ca-certificates/mozilla/USERTrust_ECC_Certification_Authority.crt is readable (or directory accessible).
2024-07-19 12:09:29 Result: file '/usr/share/ca-certificates/mozilla/USERTrust_ECC_Certification_Authority.crt' belongs to package (ca-certificates)
2024-07-19 12:09:29 Test: check if we can access /usr/share/ca-certificates/mozilla/USERTrust_RSA_Certification_Authority.crt (escaped: /usr/share/ca-certificates/mozilla/USERTrust_RSA_Certification_Authority.crt)
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:29 Result: file /usr/share/ca-certificates/mozilla/USERTrust_RSA_Certification_Authority.crt is readable (or directory accessible).
2024-07-19 12:09:29 Result: file '/usr/share/ca-certificates/mozilla/USERTrust_RSA_Certification_Authority.crt' belongs to package (ca-certificates)
2024-07-19 12:09:29 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:30 Result: file is owned by our current user ID (0), checking if it is readable
2024-07-19 12:09:31 Result: Unconfined process: unconfined:866:fusermount3
2024-07-19 12:09:31 Test: checking file/directory /boot/grub2/user.cfg
2024-07-19 12:09:31 Skipping file/directory /boot/grub2/user.cfg as it does not exist on this system
2024-07-19 12:09:32 Performing test ID HOME-9304 (Check if users' home directories permissions are 750 or more restrictive)
2024-07-19 12:09:32 Test: checking directory '/home/mcyber' for user 'mcyber'
2024-07-19 12:09:32 Result: permissions of home directory /home/mcyber of user mcyber are fine
2024-07-19 12:09:32 Performing test ID HOME-9306 (Check if users own their home directories)
2024-07-19 12:09:32 Test: checking directory '/home/mcyber' for user 'mcyber'
2024-07-19 12:09:32 Result: ownership of home directory /home/mcyber for user mcyber looks to be correct
2024-07-19 12:09:32 Result: OK, all users own their home directories
2024-07-19 12:09:32 Suggestion: Harden compilers like restricting access to root user only [test:HRDN-7222] [details:-] [solution:-]
## Users with sudo privileges:
mcyber
## Checking for administrative privileges...
mcyber
