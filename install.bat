@echo off
REM Copy files to user folder
mkdir %USERPROFILE%\.bin
xcopy /s /f /y .bin %USERPROFILE%\.bin

REM Install init.cmd
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun ^ /t REG_EXPAND_SZ /d "\"%USERPROFILE%\.bin\init.cmd\"" /f

REM Install AutoHotkey scripts
for %%F in (%USERPROFILE%\.bin\ahk\*.ahk) do (
	echo Installing %%~nxF ...
	mklink "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%%~nxF" "%%~dpnxF" 
)
pause
