ECHO ON
REM %1 �J�n����f�B���N�g��
REM %2 �폜����f�B���N�g�����B���C���h�J�[�h���g���܂��B

FOR /D /R "%~1" %%A IN (%2) DO RMDIR /S /Q %%A
