#!/bin/bash
(
  cat usuarios ; 
  join  <(cat usuarios | sort)  <(cat /etc/passwd | cut -f1 -d: | sort)
) | sort | uniq -u

