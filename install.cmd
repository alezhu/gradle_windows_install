@echo off
echo Gradle install on Windows © 2016 by alexandr.zhuravlev@gmail.com
set curDir="%~dp0"
set lpath=%PATH%
set GRADLE_HOME=%GRADLE_HOME:"=%
setx GRADLE_HOME %curDir%
call set path2=%%lpath:;%GRADLE_HOME%\bin=%%
if not "%path2%"=="%lpath%" goto exit
setx PATH "%lpath%;%GRADLE_HOME%\bin"
:exit
