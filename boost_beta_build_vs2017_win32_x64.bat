ECHO OFF
ECHO ###############################################################################
ECHO ########################## -BUILDING BJAM BINARIES- ###########################
ECHO ###############################################################################
SET MYPATH="%CD%"
cd "%~dp0"
if exist .\b2.exe del .\b2.exe
if exist .\bjam.exe del .\bjam.exe
call .\bootstrap.bat
if exist .\bin.v2 rmdir .\bin.v2 /s/q
if exist ..\bin rmdir ..\bin /s/q
ECHO ###############################################################################
ECHO ########## -BUILDING BOOST LIBRARIES 32bit **RUNTIME-LINK = ALL**- ############
ECHO ###############################################################################
if exist .\stage_x86 rmdir .\stage_x86 /s/q
b2.exe --toolset=msvc-14.1 --clean-all
b2.exe --toolset=msvc-14.1 architecture=x86 address-model=32 --stagedir=".\stage_x86" threading=multi --build-type=complete stage
if not exist ..\bin\x86 md ..\bin\x86
move /y .\stage_x86\lib\*.* ..\bin\x86

if exist .\bin.v2 rmdir .\bin.v2 /s/q
ECHO ###############################################################################
ECHO ########## -BUILDING BOOST LIBRARIES 64bit **RUNTIME-LINK = ALL**- ############
ECHO ###############################################################################
if exist .\stage_x64 rmdir \stage_x64 /s/q
b2.exe --toolset=msvc-14.1 --clean-all
b2.exe --toolset=msvc-14.1 architecture=x86 address-model=64 --stagedir=".\stage_x64" threading=multi --build-type=complete stage
if not exist .\stage md .\stage
if not exist ..\bin\x64 md ..\bin\x64
move /y .\stage_x64\lib\*.* ..\bin\x64
if exist .\stage_x86 rmdir .\stage_x86 /s/q
if exist .\stage_x64 rmdir .\stage_x64 /s/q

CD %MYPATH%
ECHO ON