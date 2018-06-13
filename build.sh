#!/bin/bash

#oem / tbz

typ=${1:-tbz}

kiwi --type ${typ} system build --description config/ --target-dir system-image
