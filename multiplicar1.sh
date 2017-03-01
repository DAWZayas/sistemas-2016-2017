#!/bin/bash
echo {1..10} | tr ' ' '\n' | xargs -I{} bash -c "echo -n '{} x $1 = '; echo $1*{} | bc"
