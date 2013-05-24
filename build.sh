#!/bin/bash

#oem / tbz

typ=${1:-tbz}


# note: if you want to make 32bit images, prepend both those commands with "linux32"

kiwi --prepare config --root system-image
kiwi --create system-image --type ${typ} -d ${typ}
