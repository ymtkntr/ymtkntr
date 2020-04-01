@ECHO OFF
SETLOCAL

REM %1 コピー元ファイル
REM %2 コピー先ディレクトリ


REM テンプレートファイルが存在しない場合、終了する
IF NOT EXIST "%~1" (ECHO "%~1"が存在しません。) & EXIT


REM テンプレートファイルと同一名のファイルがコピー先にある場合、リネームして、コピー
SET FILE_NUM=0

:LOOP1
SET /A FILE_NUM=%FILE_NUM%+1
IF EXIST "%~2\%~n1_%FILE_NUM%%~x1" GOTO LOOP1

COPY "%~1" "%~2\%~n1_%FILE_NUM%%~x1"

REM タイムスタンプを現在に変更
"%~dp0\..\bin\touch" "%~2\%~n1_%FILE_NUM%%~x1"

EXIT