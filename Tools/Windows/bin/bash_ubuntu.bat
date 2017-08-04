@echo off
IF NOT EXIST C:\Users\joe.VAIO\AppData\Local\lxss GOTO NO_LXSS_DIR
IF NOT EXIST C:\Users\joe.VAIO\AppData\Local\lxss_ubuntu GOTO NO_UBUNTU_DIR
IF NOT EXIST C:\Users\joe.VAIO\AppData\Local\lxss_arch GOTO NO_ARCH_DIR

:NO_UBUNTU_DIR
GOTO END
mv C:\Users\joe.VAIO\AppData\Local\lxss C:\Users\joe.VAIO\AppData\Local\lxss_ubuntu
IF EXIST C:\Users\joe.VAIO\AppData\Local\lxss GOTO ERROR
GOTO NO_LXSS_DIR

:NO_ARCH_DIR
mv C:\Users\joe.VAIO\AppData\Local\lxss C:\Users\joe.VAIO\AppData\Local\lxss_arch
IF EXIST C:\Users\joe.VAIO\AppData\Local\lxss GOTO ERROR
GOTO NO_LXSS_DIR

:NO_LXSS_DIR
mv C:\Users\joe.VAIO\AppData\Local\lxss_ubuntu C:\Users\joe.VAIO\AppData\Local\lxss

:END

bash %*

:ERROR