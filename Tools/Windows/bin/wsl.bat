@echo off
set a=%*
set a=%a:\=/%
C:\WINDOWS\System32\bash.exe -ic '%a%'