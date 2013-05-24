#!/bin/bash
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile
echo "Configure image: [$kiwi_iname]..."
suseSetupProduct
suseInsertService 'acpid'
suseInsertService 'alsasound'
suseInsertService 'autofs'
suseInsertService 'avahi-daemon'
suseInsertService 'bluez-coldplug'
suseInsertService 'cifs'
suseInsertService 'cpufreq'
suseInsertService 'cron'
suseInsertService 'cups'
suseInsertService 'dbus'
suseInsertService 'earlysyslog'
suseInsertService 'earlyxdm'
suseInsertService 'fbset'
suseInsertService 'kbd'
suseInsertService 'mdadmd'
suseInsertService 'microcode.ctl'
suseInsertService 'network'
suseInsertService 'network-remotefs'
suseInsertService 'nfs'
suseInsertService 'nscd'
suseInsertService 'postfix'
suseInsertService 'random'
suseInsertService 'rng-tools'
suseInsertService 'rpcbind'
suseInsertService 'ser2net'
suseInsertService 'smartd'
suseInsertService 'splash'
suseInsertService 'splash_early'
suseInsertService 'sshd'
suseInsertService 'stoppreload'
suseInsertService 'syslog'
suseInsertService 'xdm'
suseInsertService 'xinetd'

# we add a couple of repos to the tarball system

# feel free to add additional ones/remove (e.g. add packman repo)

zypper ar \
	"http://download.opensuse.org/repositories/Virtualization:/Appliances/openSUSE_12.3/" \
	"virtualization-appliances"
zypper ar \
	"http://download.opensuse.org/distribution/12.3/repo/non-oss/" \
	"repo-non-oss"
zypper ar \
	"http://download.opensuse.org/update/12.3/" \
	"updates"

# this is the most important repo, keep it always enabled

zypper ar \
	"http://download.opensuse.org/distribution/12.3/repo/oss/" \
	"repo-oss"


suseConfig
baseCleanMount
exit 0
