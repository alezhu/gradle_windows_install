@echo off
echo Gradle install on Windows © 2016 by alexandr.zhuravlev@gmail.com
set curDir="%~dp0"
setx GRADLE_HOME %curDir%
set path=%PATH%
if not "%path:GRADLE_HOME=%"=="%path%" goto exit
setx PATH "%PATH%;%%GRADLE_HOME%%\bin"
:exit
