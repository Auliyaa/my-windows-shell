@echo off

REM -------------------------------
REM Environment
REM -------------------------------
set DEV_ROOT=G:\dev
set VCPKG_ROOT=G:\dev\vcpkg

REM -------------------------------
REM DOSKEY macros (fake functions)
REM -------------------------------

REM dev: change directory to DEV_ROOT
doskey dev=cd /d %DEV_ROOT%

REM cmake_release: run cmake release preset
doskey cmake_release=cmake.exe -G "NMake Makefiles JOM" --preset win32-release $*

REM cmake_debug: run cmake debug preset
doskey cmake_debug=cmake.exe -G "NMake Makefiles JOM" --preset win32-debug $*

REM runps: execute a powershell script
doskey runps=powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$1" $*
