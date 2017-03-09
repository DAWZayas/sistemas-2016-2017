#!/bin/bash
max=$(echo "$@" | tr -s " " "\n" | xargs -I{} bash -c "echo -n {} | wc -c" | sort -n | tail -1)
echo "$@" | tr -s " " "\n" | xargs -I{} bash -c "(echo -n '{} ' ; echo -n {} | wc -c) | grep -E "[[:blank:]]$max$"" | cut -f1 -d' '
