ECHO STEP 1: Delete Working Directory
rd /s /q working

ECHO STEP 2: Create Working Directory
mkdir working

ECHO STEP 3: Create Visual Studio Project from CMakeLists.txt:
pushd working
cmake -G "Visual Studio 10 Win64" ..
if %ERRORLEVEL% NEQ 0 GOTO :FEHLER
popd

ECHO STEP 4: Build Visual Studio Project, Target=Release with Debug Information
pushd working
cmake --build . --config Release
if %ERRORLEVEL% NEQ 0 GOTO :FEHLER
popd


ECHO STEP 5: Create Setup using NSIS 64 Bit
pushd working
cpack -G NSIS64
if %ERRORLEVEL% NEQ 0 GOTO :FEHLER
popd

ECHO STEP 6: Copy Installer to Outgoing directory:
copy /Y working\AdoptOpenJDK-10.0.2-win64.exe outgoing

:ERFOLG
ECHO Success
GOTO :ENDE

:FEHLER
popd
ECHO Errors occurred. Aborting. ERRORLEVEL=%ERRORLEVEL%
GOTO :ENDE
:ENDE
