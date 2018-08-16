# Easily build boost on Visual Studio 2017
Easily build the boost library on last VS release, no pain

## build_boost_vs2017_win32_x64.bat

### Description
Windows batch script to build the boost library.
Builds boost with all runtime link types for both 32 and 64 bit architectures.

### BOOST Versions
- Tested with 1.68.0 (build_boost_vs2017_win32_x64.bat)
- Tested with 1.64.0 beta 2 (build_boost_vs2017_win32_x64.bat)

### Instructions
1. Copy the .bat file inside boost's directory (eg C:\boost_1_68_0).

2. **Using Visual Studio 2017's Developer Command Prompt** (found in "Windows' Start"\All Programs\Visual Studio 2017\Visual Studio Tools), go to the boost root directory (eg. C:\boost_1_68_0) and call-execute to bat provided in this repo build_boost_vs2017_win32_x64.bat.

eg
```shell
C:\>cd boost_1_68_0
C:\boost_1_68_0>build_boost_vs2017_win32_x64.bat
```

Note: Go for a couple of coffees... the process takes a long time (around 30 minutes in a core i7 with 4 cores with SSD).
It will output the .DLLs and .LIBs up one level from the current path (eg. d:\sdk\bin...) at "bin\x86" (for 32 bit) and "bin\x64" (for 64 bit).

### Next Steps - Linking Boost With Visual Studio 2017
1. Add headers
	- Go to Solution Explorer -> Properties -> C/C++ -> General
	- Pick & Set on "Additional Include Directories" = BOOST_ROOT (eg. C:\boost_1_68_0)

	- Properties -> C/C++ -> General -> Precompiled Header
	- Set "Not Using Precompiled Headers

2. Add compiled libraries
	- Go to Solution Explorer -> Properties -> Linker -> General -> Additional Library Directories
	- Set on "Additional Library Directories" = BOOST_ROOT\lib (eg. C:\boost_1_68_0\stage_x86\lib)
