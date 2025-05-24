@echo off

setlocal

set MVNW_REPOURL=https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
set WRAPPER_DIR=.mvn\wrapper
if not exist %WRAPPER_DIR% mkdir %WRAPPER_DIR%
if not exist %WRAPPER_DIR%\maven-wrapper.jar (
    echo Downloading Maven Wrapper...
    powershell -Command "Invoke-WebRequest -Uri %MVNW_REPOURL% -OutFile %WRAPPER_DIR%\maven-wrapper.jar"
)

if exist mvnw (
    call mvnw %*
) else (
    echo Maven Wrapper script not found or not executable. Please run 'mvn' directly or regenerate the wrapper.
    exit /b 1
)
