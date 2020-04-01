ECHO ON
REM %1 開始するディレクトリ
REM %2 削除するディレクトリ名。ワイルドカードが使えます。

FOR /D /R "%~1" %%A IN (%2) DO RMDIR /S /Q %%A
