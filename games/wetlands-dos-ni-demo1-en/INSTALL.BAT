@echo off
if %1x==x goto error
if %1==c: goto ok
if %1==C: goto ok
if %1==d: goto ok
if %1==D: goto ok
if %1==e: goto ok
if %1==E: goto ok
goto error

:ok
md %1\wetlands
xcopy *.* %1\wetlands
md %1\wetlands\demo
xcopy demo %1\wetlands\demo
%1
cd \wetlands
del install.bat
del wetland2.txt
goto end

:error

echo 
echo   Usage: INSTALL drive:
echo Example: INSTALL c:
echo 


:end
