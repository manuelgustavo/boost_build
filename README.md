# .bat file to build boost on Visual Studio 2017
Easily build the boost library on last VS release no pain

## boost_build_vs2017_win32_x64.bat

### Description
Windows batch script to build the boost library.
Builds boost with all runtime link types for both 32 and 64 bit architectures.

### Versions
- Tested with boost 1.63.0 (boost_build_vs2017_win32_x64.bat)
- Tested with 1.64.0 beta 2 (boost_beta_build_vs2017_win32_x64.bat)

### Instructions
1. Copy the .bat file inside boost's directory (eg boost_1_63_0).

2. ** Using Visual Studio 2017's Developer Command Prompt ** (found in "Windows' Start"\All Programs\Visual Studio 2017\Visual Studio Tools), go to the boost root directory (eg. C:\boost_1_63_0) and execute the bat provided in this repo boost_build_vs2017_win32_x64.bat.

Note: Go to 2 Cofees the process take a long time.
It will output the .DLLs and .LIBs up one level from the current path (eg. d:\sdk\bin...) at "bin\x86" (for 32 bit) and "bin\x64" (for 64 bit).

## boost_beta_build_vs2017_win32_x64.bat
### Instructions for 1.64.0 boost beta 2 & Visual Studio 2017

```shell
cd A:\sources\libs\boost_1_64_0
boost_beta_build_vs2017_win32_x64.bat
```

### Next Steps - Linking Boost With Visual Studio 2017
