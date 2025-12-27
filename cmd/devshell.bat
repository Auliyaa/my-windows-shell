@echo off

REM -------------------------------
REM Visual Studio toolchain
REM -------------------------------
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat"

REM -------------------------------
REM Environment
REM -------------------------------
set DEV_ROOT=G:\dev
set VCPKG_ROOT=G:\dev\vcpkg
set PATH=%PATH%;%DEV_ROOT%\my-windows-shell\bin

REM -------------------------------
REM DOSKEY macros (fake functions)
REM -------------------------------

REM dev: change directory to DEV_ROOT
doskey dev=cd /d %DEV_ROOT%

REM cmake_release: run cmake release preset
doskey cmake_release=cmake.exe -G "NMake Makefiles JOM" --preset w32-release $*

REM cmake_debug: run cmake debug preset
doskey cmake_debug=cmake.exe -G "NMake Makefiles JOM" --preset w32-debug $*

REM runps: execute a powershell script
doskey runps=powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$1" $*
