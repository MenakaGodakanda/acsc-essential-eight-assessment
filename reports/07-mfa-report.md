# ACSC Essential Eight - Multi-factor Authentication
## Checking SSH configuration file for MFA settings...
# Authentication:
#PubkeyAuthentication yes
#HostbasedAuthentication no
# HostbasedAuthentication
# PasswordAuthentication yes
KbdInteractiveAuthentication no
#KerberosAuthentication no
#GSSAPIAuthentication no
# Set this to 'yes' to enable PAM authentication, account processing,
# and session processing. If this is enabled, PAM authentication will
# be allowed through the KbdInteractiveAuthentication and
# PasswordAuthentication.  Depending on your PAM configuration,
# PAM authentication via KbdInteractiveAuthentication may bypass
# PAM authentication, then enable this but set PasswordAuthentication
# and KbdInteractiveAuthentication to 'no'.
## Checking for MFA-related settings using Lynis...
2024-07-19 12:08:54 Plugin 'authentication' enabled according profile (/etc/lynis/default.prf)
2024-07-19 12:08:59 Status: Starting Authentication checks...
2024-07-19 12:09:00 Suggestion: Install fail2ban to automatically ban hosts that commit multiple authentication errors. [test:DEB-0880] [details:-] [solution:-]
2024-07-19 12:09:04 Checking permissions of /usr/share/lynis/include/tests_authentication
2024-07-19 12:09:04 Action: Performing tests from category: Users, Groups and Authentication
2024-07-19 12:09:04 Performing test ID AUTH-9240 (Query NIS+ authentication support)
2024-07-19 12:09:04 Result: NIS+ authentication not enabled
2024-07-19 12:09:04 Performing test ID AUTH-9242 (Query NIS authentication support)
2024-07-19 12:09:04 Result: NIS authentication not enabled
2024-07-19 12:09:04 Skipped test AUTH-9306 (Check single boot authentication)
2024-07-19 12:09:04 Performing test ID AUTH-9402 (Query LDAP authentication support)
2024-07-19 12:09:04 Result: LDAP authentication not enabled
2024-07-19 12:09:19 Skipped test SQD-3614 (Check Squid authentication methods)
2024-07-19 12:09:19 Skipped test SQD-3616 (Check external Squid authentication)
2024-07-19 12:09:21 Test: check if we can access /usr/share/ca-certificates/mozilla/Actalis_Authentication_Root_CA.crt (escaped: /usr/share/ca-certificates/mozilla/Actalis_Authentication_Root_CA.crt)
2024-07-19 12:09:21 Result: file /usr/share/ca-certificates/mozilla/Actalis_Authentication_Root_CA.crt is readable (or directory accessible).
2024-07-19 12:09:21 Result: file '/usr/share/ca-certificates/mozilla/Actalis_Authentication_Root_CA.crt' belongs to package (ca-certificates)
