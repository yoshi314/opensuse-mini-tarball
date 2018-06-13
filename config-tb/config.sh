#!/bin/bash
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile
echo "Configure image: [$kiwi_iname]..."
suseSetupProduct

# we add a couple of repos to the tarball system

# feel free to add additional ones/remove (e.g. add packman repo)

zypper ar http://download.opensuse.org/tumbleweed/repo/oss/ oss
zypper ar http://download.opensuse.org/tumbleweed/repo/non-oss/ non-oss



suseConfig
baseCleanMount
exit 0
