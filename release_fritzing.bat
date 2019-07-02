call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\Common7\Tools\VsDevCmd.bat" -host_arch=amd64 -arch=amd64

set DESTDIR=..\release123
rem get the absolute path of DESTDIR
pushd %DESTDIR%
set DESTDIR=%CD%
popd

md "%DESTDIR%"
echo "HALLO" > "%DESTDIR%\fritzing.pc.zip"
