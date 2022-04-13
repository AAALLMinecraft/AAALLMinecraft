@echo off
title 万能删除(Universal delete)
echo 教程:拖动你要删除的文件/夹然后拖到这个文件，然后输入y删除，输入n退出(Tutorial: Drag the file/folder you want to delete then drag to this file, then enter y to delete, n to exit)
set /p a=删除请按y键，退出请按n键 ,请输入并按回车:(To delete, press y, to exit, press n, please enter and press Enter:)
if /i "%a%"=="n" exit
if /i "%a%"=="y" goto :1
cls&%0
:1
DEL /F/A/Q \\?\%*
RD /S /Q \\?\%*
echo 文件已删除(file deleted)
pause
