@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\app.jar;%APP_HOME%\lib\guava-30.1.1-jre.jar;%APP_HOME%\lib\groovy-ant-3.0.8.jar;%APP_HOME%\lib\groovy-astbuilder-3.0.8.jar;%APP_HOME%\lib\groovy-cli-picocli-3.0.8.jar;%APP_HOME%\lib\groovy-groovysh-3.0.8.jar;%APP_HOME%\lib\groovy-console-3.0.8.jar;%APP_HOME%\lib\groovy-datetime-3.0.8.jar;%APP_HOME%\lib\groovy-groovydoc-3.0.8.jar;%APP_HOME%\lib\groovy-docgenerator-3.0.8.jar;%APP_HOME%\lib\groovy-jmx-3.0.8.jar;%APP_HOME%\lib\groovy-json-3.0.8.jar;%APP_HOME%\lib\groovy-jsr223-3.0.8.jar;%APP_HOME%\lib\groovy-macro-3.0.8.jar;%APP_HOME%\lib\groovy-nio-3.0.8.jar;%APP_HOME%\lib\groovy-servlet-3.0.8.jar;%APP_HOME%\lib\groovy-sql-3.0.8.jar;%APP_HOME%\lib\groovy-swing-3.0.8.jar;%APP_HOME%\lib\groovy-templates-3.0.8.jar;%APP_HOME%\lib\groovy-test-3.0.8.jar;%APP_HOME%\lib\groovy-test-junit5-3.0.8.jar;%APP_HOME%\lib\groovy-testng-3.0.8.jar;%APP_HOME%\lib\groovy-xml-3.0.8.jar;%APP_HOME%\lib\groovy-3.0.8.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.8.0.jar;%APP_HOME%\lib\error_prone_annotations-2.5.1.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\ant-junit-1.10.9.jar;%APP_HOME%\lib\ant-1.10.9.jar;%APP_HOME%\lib\ant-launcher-1.10.9.jar;%APP_HOME%\lib\ant-antlr-1.10.9.jar;%APP_HOME%\lib\picocli-4.5.2.jar;%APP_HOME%\lib\qdox-1.12.1.jar;%APP_HOME%\lib\javaparser-core-3.18.0.jar;%APP_HOME%\lib\jline-2.14.6.jar;%APP_HOME%\lib\junit-4.13.2.jar;%APP_HOME%\lib\junit-platform-launcher-1.7.0.jar;%APP_HOME%\lib\junit-platform-engine-1.7.0.jar;%APP_HOME%\lib\junit-platform-commons-1.7.0.jar;%APP_HOME%\lib\junit-jupiter-engine-5.7.0.jar;%APP_HOME%\lib\junit-jupiter-api-5.7.0.jar;%APP_HOME%\lib\testng-7.4.0.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\opentest4j-1.2.0.jar;%APP_HOME%\lib\jcommander-1.78.jar;%APP_HOME%\lib\jquery-3.5.1.jar


@rem Execute app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APP_OPTS%  -classpath "%CLASSPATH%" HolaMundo.App %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%APP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
