@echo off
set a=%*
set a=%a:\=/%
C:\WINDOWS\Sysnative\bash.exe -ic '%a%'