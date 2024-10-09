#!/bin/bash

echo """
██╗   ██╗███╗   ██╗███████╗ █████╗ ███████╗███████╗     ██████╗ █████╗ ██████╗  █████╗ 
██║   ██║████╗  ██║██╔════╝██╔══██╗██╔════╝██╔════╝    ██╔════╝██╔══██╗██╔══██╗██╔══██╗
██║   ██║██╔██╗ ██║███████╗███████║█████╗  █████╗      ██║     ███████║██████╔╝███████║
██║   ██║██║╚██╗██║╚════██║██╔══██║██╔══╝  ██╔══╝      ██║     ██╔══██║██╔═══╝ ██╔══██║
╚██████╔╝██║ ╚████║███████║██║  ██║██║     ███████╗    ╚██████╗██║  ██║██║     ██║  ██║
 ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝     ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝
Author: https://github.com/nagasivakrishna
version 1.0                                                                                      
"""
unsafe_caps=(CAP_CHOWN CAP_DAC_OVERRIDE CAP_DAC_READ_SEARCH CAP_SETUID CAP_SETGID CAP_NET_RAW CAP_SYS_ADMIN CAP_SYS_PTRACE CAP_SYS_MODULE CAP_FOWNER CAP_SETFCAP)

echo """

The following capabilities can be misused for privesc. These can be potential vectors :)
========================================================
"""

for i in "${unsafe_caps[@]}";
do
  echo "$i"
done

echo """
========================================================
Running...
"""
for i in "${unsafe_caps[@]}";
do
  getcap -r / 2>/dev/null | grep --color=always -i "$i"
done
echo """
========================================================
Complete.
"""
