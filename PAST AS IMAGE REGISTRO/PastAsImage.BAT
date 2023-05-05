@echo off
for /f "tokens=*" %%a in ('powershell -command "Get-Clipboard -Format Image"') do set image=%%a
set timestamp=%date:~-4,4%%date:~-7,2%%date:~-10,2%-%time:~0,2%%time:~3,2%%time:~6,2%
set filename=Image_%timestamp%.png
echo %image%> "%1\%filename%"
