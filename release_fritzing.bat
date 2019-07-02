set DESTDIR=..\release123
rem get the absolute path of DESTDIR
pushd %DESTDIR%
set DESTDIR=%CD%
popd

echo "HALLO" > "%DESTDIR%\fritzing.pc.zip"