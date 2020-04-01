REM 指定フォルダ内に存在する全ての空フォルダを削除
REM 使用法：call :rmdir_empty.bat [対象とするフォルダのフルパス]

FOR /F "DELIMS=" %%F IN ('DIR %1\* /AD /B /S ^| SORT /R') DO RMDIR "%%F"
