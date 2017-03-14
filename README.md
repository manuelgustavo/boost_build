# boost_build
Scripts to build easily build the boost library.



# boost_build_vs2017_win32_x64.bat
Tested with boost 1.63.
Builds boost with all runtime link types for both 32 and 64 bit architectures.

It outputs the .DLLs and .LIBs at "..\bin\x86" (for 32 bit) and "..\bin\x64" (for 64 bit).

Instructions:
Copy the .bat file inside boost's directory (eg boost_1_63_0).
Using Visual Studio 2017's Developer Command Prompt (found in "Windows' Start"\All Programs\Visual Studio 2017\Visual Studio Tools), execute boost_build_vs2017_win32_x64.bat.
