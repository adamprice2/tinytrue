#!/bin/bash
X=${1:? Must give an output name}
X=${X/.asm/}
echo "${X}"

rm -f "${X}"

nasm -fbin -o "${X}" "./${X}.asm" && chmod +x "./${X}"

wc -c "${X}"

"./$X" ; echo $?
