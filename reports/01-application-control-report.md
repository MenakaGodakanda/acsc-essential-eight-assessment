# ACSC Essential Eight - Application Control
## Checking for unauthorized applications...
suggestion[]=USB-1000|Disable drivers like USB storage when not used, to prevent unauthorized storage or data theft|-|-|
suggestion[]=BANN-7126|Add a legal banner to /etc/issue, to warn unauthorized users|-|-|
suggestion[]=BANN-7130|Add legal banner to /etc/issue.net, to warn unauthorized users|-|-|
## Checking the status of unauthorized applications...
apparmor module is loaded.
58 profiles are loaded.
56 profiles are in enforce mode.
   /snap/snapd/20671/usr/lib/snapd/snap-confine
   /snap/snapd/20671/usr/lib/snapd/snap-confine//mount-namespace-capture-helper
   /snap/snapd/21759/usr/lib/snapd/snap-confine
   /snap/snapd/21759/usr/lib/snapd/snap-confine//mount-namespace-capture-helper
   /usr/bin/evince
   /usr/bin/evince-previewer
   /usr/bin/evince-previewer//sanitized_helper
   /usr/bin/evince-thumbnailer
   /usr/bin/evince//sanitized_helper
   /usr/bin/evince//snap_browsers
   /usr/bin/man
   /usr/lib/NetworkManager/nm-dhcp-client.action
   /usr/lib/NetworkManager/nm-dhcp-helper
   /usr/lib/connman/scripts/dhclient-script
   /usr/lib/cups/backend/cups-pdf
   /usr/lib/snapd/snap-confine
   /usr/lib/snapd/snap-confine//mount-namespace-capture-helper
   /usr/sbin/cups-browsed
   /usr/sbin/cupsd
   /usr/sbin/cupsd//third_party
   /{,usr/}sbin/dhclient
   docker-default
   libreoffice-senddoc
   libreoffice-soffice//gpg
   libreoffice-xpdfimport
   lsb_release
   man_filter
   man_groff
   nvidia_modprobe
   nvidia_modprobe//kmod
   snap-update-ns.firefox
   snap-update-ns.snap-store
   snap-update-ns.snapd-desktop-integration
   snap.firefox.firefox
   snap.firefox.geckodriver
   snap.firefox.hook.configure
   snap.firefox.hook.connect-plug-host-hunspell
   snap.firefox.hook.disconnect-plug-host-hunspell
   snap.firefox.hook.post-refresh
   snap.snap-store.hook.configure
   snap.snap-store.snap-store
   snap.snap-store.ubuntu-software
   snap.snap-store.ubuntu-software-local-file
   snap.snapd-desktop-integration.hook.configure
   snap.snapd-desktop-integration.snapd-desktop-integration
   tcpdump
   ubuntu_pro_apt_news
   ubuntu_pro_esm_cache
   ubuntu_pro_esm_cache//apt_methods
   ubuntu_pro_esm_cache//apt_methods_gpgv
   ubuntu_pro_esm_cache//cloud_id
   ubuntu_pro_esm_cache//dpkg
   ubuntu_pro_esm_cache//ps
   ubuntu_pro_esm_cache//ubuntu_distro_info
   ubuntu_pro_esm_cache_systemctl
   ubuntu_pro_esm_cache_systemd_detect_virt
2 profiles are in complain mode.
   libreoffice-oosplash
   libreoffice-soffice
0 profiles are in kill mode.
0 profiles are in unconfined mode.
16 processes have profiles defined.
16 processes are in enforce mode.
   /usr/sbin/cups-browsed (3866326) 
   /usr/sbin/cupsd (3866324) 
   /snap/firefox/4539/usr/lib/firefox/firefox (3946521) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3946661) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3946676) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3946702) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3947091) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3947100) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3947104) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3947111) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3947191) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3947213) snap.firefox.firefox
   /snap/firefox/4539/usr/lib/firefox/firefox (3947248) snap.firefox.firefox
   /snap/snap-store/1113/usr/bin/snap-store (2587978) snap.snap-store.ubuntu-software
   /snap/snapd-desktop-integration/157/usr/bin/snapd-desktop-integration (3034221) snap.snapd-desktop-integration.snapd-desktop-integration
   /snap/snapd-desktop-integration/157/usr/bin/snapd-desktop-integration (3034405) snap.snapd-desktop-integration.snapd-desktop-integration
0 processes are in complain mode.
0 processes are unconfined but have a profile defined.
0 processes are in mixed mode.
0 processes are in kill mode.
