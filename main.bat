:: Start shit
  @echo off
  chcp 65001
  cls
  title Restore++ by guap#0420

:AdminCheck
  NET FILE 1>NUL 2>NUL
  if '%errorlevel%' == '0' ( goto Pass) else ( goto Fail )


:Fail
  echo.[40;33mPlease run as admin.
  ping localhost -n 4 >nul
  exit

:pass
  Echo Are you sure you want to continue?
  set /p prompt1= Y/N : 
  if '%prompt1%' == 'Y' ( goto Continue ) else ( goto 1 ) 

:1 
  echo exit
  pause

:continue  
  echo [40;32mChecking Windows image diagnostics...
  Dism /Online /Cleanup-Image /CheckHealth
  echo.
  echo.
  net user
  echo.
  echo [40;33mYOU SHOULD BE ADMINISTRATOR
  pause 
  echo [40;32mremoving windows watermark
  bcedit -set TESTSIGNING OFF







  echo [40;33mRestart PC to remove windows activation mark..
  pause

