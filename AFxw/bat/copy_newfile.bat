@ECHO OFF
SETLOCAL

REM %1 �R�s�[���t�@�C��
REM %2 �R�s�[��f�B���N�g��


REM �e���v���[�g�t�@�C�������݂��Ȃ��ꍇ�A�I������
IF NOT EXIST "%~1" (ECHO "%~1"�����݂��܂���B) & EXIT


REM �e���v���[�g�t�@�C���Ɠ��ꖼ�̃t�@�C�����R�s�[��ɂ���ꍇ�A���l�[�����āA�R�s�[
SET FILE_NUM=0

:LOOP1
SET /A FILE_NUM=%FILE_NUM%+1
IF EXIST "%~2\%~n1_%FILE_NUM%%~x1" GOTO LOOP1

COPY "%~1" "%~2\%~n1_%FILE_NUM%%~x1"

REM �^�C���X�^���v�����݂ɕύX
"%~dp0\..\bin\touch" "%~2\%~n1_%FILE_NUM%%~x1"

EXIT