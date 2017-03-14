# boost_build
Scripts to build easily build the boost library.

## boost_build_vs2017_win32_x64.bat

### Description
Windows batch script to build the boost library.
Builds boost with all runtime link types for both 32 and 64 bit architectures.

### Versions
Tested with boost 1.63.0

### Instructions
Copy the .bat file inside boost's directory (eg boost_1_63_0).
Using Visual Studio 2017's Developer Command Prompt (found in "Windows' Start"\All Programs\Visual Studio 2017\Visual Studio Tools), go to the boost root directory (eg. d:\sdk\boost_1_63_0) and execute boost_build_vs2017_win32_x64.bat.

It will output the .DLLs and .LIBs up one level from the current path (eg. d:\sdk\bin...) at "bin\x86" (for 32 bit) and "bin\x64" (for 64 bit).
