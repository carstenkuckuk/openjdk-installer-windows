# openjdk-installer-windows
Scripts to create Windows installers from the ZIP files created by the AdoptOpenJDK project

## Status
These scripts are in the "Hello World" stage: They work on my machine with one specific set of JDK binaries.

## Why?
At the Hackgarten event in Dortmund, Germany, on September 08, 2018, Hendrik Ebbers talked about the OpenJDK project, and 
the AdoptOpenJDK project which provides binaries for the OpenJDK, but no installers. There seems to be a need for an installer
for the JDK and the JRE that can be used by end uses, but there is none yet. So this project here got started.

## Preconditions
These scripts here run under Windows 8.1, 64 Bit. You need to install [CMake](https://cmake.org/download/) and
[NSIS](http://nsis.sourceforge.net/Download). This is (NSIS 3.0b2, CMake 3.10.3, VS2010) what I have 
installed on my development computer at home, and I know that it works there. I expect this to run on other
Windows versions, with other versions of NSIS and CMake, too, but haven't tested it. 

## Usage
1. Download the ZIP file with the OpenJDK binaries for Windows 64 Bit 
[here](https://github.com/AdoptOpenJDK/openjdk10-releases/releases/download/jdk-10.0.2%2B13/OpenJDK10_x64_Windows_jdk-10.0.2.13.zip)
(direct download link!!!) and store it in the ./incoming folder
2. Unzip the file, and put the contents in the ./incoming folder. You should now have a directory ./incoming/jdk-10.0.2+13
3. Open a command line, switch to this folder here, and run build.bat
4. If everything goes well, an installer should be created and placed in the ./outgoing folder

## Contact
I started this in my spare time. During the week, I have a daytime job, and I also have a family, so I'm not available for
support, but I'd like to get feedback, error reports, suggestions, comments, patches and help.

You can contact me at ck@kuckuk.com.
