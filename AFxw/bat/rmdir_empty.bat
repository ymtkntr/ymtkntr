REM �w��t�H���_���ɑ��݂���S�Ă̋�t�H���_���폜
REM �g�p�@�Fcall :rmdir_empty.bat [�ΏۂƂ���t�H���_�̃t���p�X]

FOR /F "DELIMS=" %%F IN ('DIR %1\* /AD /B /S ^| SORT /R') DO RMDIR "%%F"
