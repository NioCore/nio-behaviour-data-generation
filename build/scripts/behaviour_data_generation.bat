@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  behaviour_data_generation startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and BEHAVIOUR_DATA_GENERATION_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\behaviour_data_generation.jar;%APP_HOME%\lib\Classifier-Application.jar;%APP_HOME%\lib\libsvm.jar;%APP_HOME%\lib\plotter.jar;%APP_HOME%\lib\Engine-Application.jar;%APP_HOME%\lib\commons-cli-1.4.jar;%APP_HOME%\lib\commons-text-1.4.jar;%APP_HOME%\lib\reflections-0.9.11.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\commons-lang3-3.7.jar;%APP_HOME%\lib\guava-20.0.jar;%APP_HOME%\lib\javassist-3.21.0-GA.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\java-string-similarity-1.1.0.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar

@rem Execute behaviour_data_generation
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %BEHAVIOUR_DATA_GENERATION_OPTS%  -classpath "%CLASSPATH%" de.uni_kassel.vs.datageneration.MainApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable BEHAVIOUR_DATA_GENERATION_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%BEHAVIOUR_DATA_GENERATION_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
