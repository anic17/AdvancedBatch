@echo off&set "z=%APPDATA%\FileZilla"
for /f "tokens=2 delims=>" %%A in ('findstr /ic:"<pass" "%z%\sitemanager.xml"') do for /f "tokens=1 delims=<" %%B in ('^<nul set /p "=%%A"') do call:k "%%B"&exit /B
:k
set b=%~1
set p=%b: =%
<nul set /p =Password: &powershell "[Text.Encoding]::UTF8.GetString([convert]::FromBase64String('%p%'))"
