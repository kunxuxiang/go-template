@echo off

set "BIN_DIR=%~dp0"
set "PRGDIR=%BIN_DIR%\.."

where git >nul 2>&1
if %errorlevel% neq 0 (
  echo git is not installed!
  exit /b 1
)

cd /d "%PRGDIR%" || (
  echo directory not exist!
  exit /b 1
)

for /r "%PRGDIR%" %%F in (.gitkeep) do del "%%F"

del "%PRGDIR%\scripts\init.bat"

exit /b 0
