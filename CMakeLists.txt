cmake_minimum_required(VERSION 2.8)

project(AdoptOpenJDKInstaller)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# I'm not sure if CMake/CPack works if there is nothing to build, so I just create a Hello World
# C++ project, compile it, but then don't install it. 
add_executable(HelloCppWorld hello.cpp)
#install(
#	TARGETS HelloCppWorld
#	RUNTIME
#	DESTINATION bin
#	COMPONENT Applications
#)

# Take all the files from the directory ./incoming/jdk-10.0.2+13, and install them to . on the
# target system:
file(GLOB JDK_FILES "${CMAKE_SOURCE_DIR}/incoming/jdk-10.0.2+13/**")
install(DIRECTORY ${CMAKE_SOURCE_DIR}/incoming/jdk-10.0.2+13
		DESTINATION .
		COMPONENT JDKDateien
)


########################################
###
###  Installers for Windows (NSIS) and
###

set(CPACK_PACKAGE_NAME     "AdoptOpenJDK")
set(CPACK_PACKAGE_VENDOR   "kuckuk.com")
set(CPACK_PACKAGE_CONTACT  "Carsten Kuckuk <ck@kuckuk.com>")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "OpenJDK Installer based on binaries from AdoptOpenJDK.net")
set(CPACK_PACKAGE_VERSION "10.0.2")
set(CPACK_PACKAGE_VERSION_MAJOR "10")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "2")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "AdoptOpenJDK")

#set(CPACK_CREATE_DESKTOP_LINKS HelloCppWorld)
set(CPACK_NSIS_MODIFY_PATH ON)

# Start Menue Entries:
#set(CPACK_PACKAGE_EXECUTABLES "HelloCppWorld" "Hello C++ World"
#)

set(CPACK_NSIS_MENU_LINKS "http://www.adoptopenjdk.net/" "AdoptOpenJDK Web Site" )

#include(InstallRequiredSystemLibraries)

include(CPack)
