@echo off

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

set VERSION=0.1
set ICON=icon.ico
set COPYRIGHT="(c) 2019 Timur Gafarov"

if %OS%==32BIT rcedit-x86.exe app.exe --set-icon %ICON% --set-file-version %VERSION% --set-product-version %VERSION% --set-version-string "LegalCopyright" %COPYRIGHT%
if %OS%==64BIT rcedit-x64.exe app.exe --set-icon %ICON% --set-file-version %VERSION% --set-product-version %VERSION% --set-version-string "LegalCopyright" %COPYRIGHT%