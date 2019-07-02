

cd /d %~dp0
set DESTDIR=..\release123
rem get the absolute path of DESTDIR
pushd %DESTDIR%
set DESTDIR=%CD%
popd

md "%DESTDIR%"
echo "HALLO" > "%DESTDIR%\fritzing.pc.zip"
