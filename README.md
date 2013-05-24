This is a minimal config file for kiwi tool to generate an opensuse tarball than can be later chrooted into.

You will need: 
- opensuse installation
- kiwi package installed

build.sh starts the build process (inspect the file for info how to make 32bit images on 64bit host).

specific settings are in config/config.xml file (e.g. root password)
config/config.sh is executed in generated system environment for post-processing. Tweak it to your liking.

clean.sh cleans the build dir to enable rebuilding from scratch.

in short - run build.sh. If all goes well, you will end up with a tarball in tbz/ subdirectory after a couple of minutes.