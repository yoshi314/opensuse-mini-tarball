#!/bin/bash

typ=${1:-tbz}

kiwi --type ${typ} system build --description config-tb/ --target-dir system-image-tb
