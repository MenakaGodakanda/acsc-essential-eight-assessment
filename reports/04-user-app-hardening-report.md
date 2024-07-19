# ACSC Essential Eight - User Application Hardening
## Checking password policies...
## Checking file permissions and ownership of /etc/passwd...
-rw-r--r-- 1 root root 2936 Jul 18 04:22 /etc/passwd
## File permissions and ownership of /etc/shadow...
-rw-r----- 1 root shadow 1491 Jul 18 04:22 /etc/shadow
## Checking user application hardening...
## Checking for hardening recommendations...
suggestion[]=BOOT-5264|Consider hardening system services|Run '/usr/bin/systemd-analyze security SERVICE' for each service|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|AllowTcpForwarding (set YES to NO)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|ClientAliveCountMax (set 3 to 2)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|Compression (set YES to NO)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|LogLevel (set INFO to VERBOSE)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|MaxAuthTries (set 6 to 3)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|MaxSessions (set 10 to 2)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|Port (set 22 to )|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|TCPKeepAlive (set YES to NO)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|X11Forwarding (set YES to NO)|-|
suggestion[]=SSH-7408|Consider hardening SSH configuration|AllowAgentForwarding (set YES to NO)|-|
hardening_index=63
