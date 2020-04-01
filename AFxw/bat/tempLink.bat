@ECHO OFF
REM %1:	書き出すメニューファイル
REM %2:	パス１
REM %3:	パス２
REM %4:	表示内容

IF NOT EXIST %1 (ECHO afx tempLink > %1) & (ECHO "メニュー編集" ^&EDIT %1 >> %1) & (ECHO "削除" ^$V"tool_D"\CraftLaunch\clnch.exe /ex @BatchTrigger;DEL;\"%1\" >> %1)
IF "%~3"=="" (ECHO %2 ^&CD %2 >> %1) & GOTO :EOF
IF "%~4"=="" (ECHO "%~s2 || %~s3" ^&EXCD -P%2 -O%3 >> %1) & GOTO :EOF
ECHO %4 ^&EXCD -P%2 -O%3 >> %1