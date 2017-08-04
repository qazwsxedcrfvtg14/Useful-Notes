@echo off
psexec \\::1 -s -i -d -w "%cd%" -realtime "cmd" 2>NUL