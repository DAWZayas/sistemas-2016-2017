#!/bin/bash
cat palabras |
 tr ' \t,;' '\n' |
 xargs -I{} bash -c "echo -n "{}:" ; echo {} | rev " |
 grep -E "^(.+):\1$" |
 cut -f1 -d:
