@echo off
title 万能删除(Universal delete)
set /p a=删除请按y键，退出请按n键 ,请输入并按回车:(To delete, press y, to exit, press n, please enter and press Enter:)
if /i "%a%"=="n" exit
if /i "%a%"=="y" goto :1
cls&%0
:1
DEL /F/A/Q \\?\%*
RD /S /Q \\?\%*
echo 文件已删除(file deleted)
pause
exit
