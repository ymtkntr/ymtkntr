@ECHO OFF
REM %1:	�����o�����j���[�t�@�C��
REM %2:	�p�X�P
REM %3:	�p�X�Q
REM %4:	�\�����e

IF NOT EXIST %1 (ECHO afx tempLink > %1) & (ECHO "���j���[�ҏW" ^&EDIT %1 >> %1) & (ECHO "�폜" ^$V"tool_D"\CraftLaunch\clnch.exe /ex @BatchTrigger;DEL;\"%1\" >> %1)
IF "%~3"=="" (ECHO %2 ^&CD %2 >> %1) & GOTO :EOF
IF "%~4"=="" (ECHO "%~s2 || %~s3" ^&EXCD -P%2 -O%3 >> %1) & GOTO :EOF
ECHO %4 ^&EXCD -P%2 -O%3 >> %1