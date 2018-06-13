# Description

This is a minimal config file for kiwi tool to generate an opensuse tarball than can be later chrooted into.

You will need: 
- opensuse installation
- kiwi package installed

build.sh or build-tb.sh starts the build process

specific settings are in config/config.xml file (e.g. root password) , or config-tb/config.xml
config/config.sh is executed in generated system environment for post-processing. Tweak it to your liking.

clean.sh cleans the build dir to enable rebuilding from scratch.

in short - run build{,-tb}.sh. If all goes well, you will end up with a tarball in tbz/ subdirectory after a couple of minutes.


the resulting files should end up in system-image or system-image-tb

<pre>

total 38536
drwxr-xr-x 3 root root     4096 Jun 13 07:44 build
-rw-r--r-- 1 root root     5547 Jun 13 07:44 kiwi.result
-rw-r--r-- 1 root root       54 Jun 13 07:44 tbz-suse-leap15.x86_64-1.0.0.md5
-rw-r--r-- 1 root root    20548 Jun 13 07:44 tbz-suse-leap15.x86_64-1.0.0.packages
-rw-r--r-- 1 root root 39413700 Jun 13 07:44 tbz-suse-leap15.x86_64-1.0.0.tar.xz
-rw-r--r-- 1 root root     2095 Jun 13 07:44 tbz-suse-leap15.x86_64-1.0.0.verified

system-image-tb/:
total 39160
drwxr-xr-x 3 root root     4096 Jun 13 07:43 build
-rw-r--r-- 1 root root     5437 Jun 13 07:44 kiwi.result
-rw-r--r-- 1 root root       54 Jun 13 07:43 tbz-suse-tumbleweed.x86_64-1.0.0.md5
-rw-r--r-- 1 root root    18801 Jun 13 07:43 tbz-suse-tumbleweed.x86_64-1.0.0.packages
-rw-r--r-- 1 root root 40055132 Jun 13 07:43 tbz-suse-tumbleweed.x86_64-1.0.0.tar.xz
-rw-r--r-- 1 root root     2031 Jun 13 07:44 tbz-suse-tumbleweed.x86_64-1.0.0.verified


</pre>


# Variants

Currently there are scripts for Leap and Tumbleweed. Adjust as necessary, they are designed to produce tarballs by default.

