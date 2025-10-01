@echo off
REM Usage: run in elevated CMD on Windows endpoint
for /L %%i in (1,1,30) do net use \\127.0.0.1\C$ /user:lab\fakeuser WrongPass! >nul 2>&1
echo Generated failed logon attempts
