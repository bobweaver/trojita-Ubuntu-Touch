# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joseph/Templates/trojita

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joseph/Templates/trojita/build

# Include any dependencies generated for this target.
include CMakeFiles/AppVersion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AppVersion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AppVersion.dir/flags.make

CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o: CMakeFiles/AppVersion.dir/flags.make
CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o: ../src/AppVersion/SetCoreApplication.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/joseph/Templates/trojita/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o -c /home/joseph/Templates/trojita/src/AppVersion/SetCoreApplication.cpp

CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/joseph/Templates/trojita/src/AppVersion/SetCoreApplication.cpp > CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.i

CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/joseph/Templates/trojita/src/AppVersion/SetCoreApplication.cpp -o CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.s

CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.requires:
.PHONY : CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.requires

CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.provides: CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.requires
	$(MAKE) -f CMakeFiles/AppVersion.dir/build.make CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.provides.build
.PHONY : CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.provides

CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.provides.build: CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o

CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o: CMakeFiles/AppVersion.dir/flags.make
CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o: AppVersion_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/joseph/Templates/trojita/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o -c /home/joseph/Templates/trojita/build/AppVersion_automoc.cpp

CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/joseph/Templates/trojita/build/AppVersion_automoc.cpp > CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.i

CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/joseph/Templates/trojita/build/AppVersion_automoc.cpp -o CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.s

CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.requires:
.PHONY : CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.requires

CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.provides: CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.requires
	$(MAKE) -f CMakeFiles/AppVersion.dir/build.make CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.provides.build
.PHONY : CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.provides

CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.provides.build: CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o

# Object files for target AppVersion
AppVersion_OBJECTS = \
"CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o" \
"CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o"

# External object files for target AppVersion
AppVersion_EXTERNAL_OBJECTS =

libAppVersion.a: CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o
libAppVersion.a: CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o
libAppVersion.a: CMakeFiles/AppVersion.dir/build.make
libAppVersion.a: CMakeFiles/AppVersion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libAppVersion.a"
	$(CMAKE_COMMAND) -P CMakeFiles/AppVersion.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AppVersion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AppVersion.dir/build: libAppVersion.a
.PHONY : CMakeFiles/AppVersion.dir/build

CMakeFiles/AppVersion.dir/requires: CMakeFiles/AppVersion.dir/src/AppVersion/SetCoreApplication.cpp.o.requires
CMakeFiles/AppVersion.dir/requires: CMakeFiles/AppVersion.dir/AppVersion_automoc.cpp.o.requires
.PHONY : CMakeFiles/AppVersion.dir/requires

CMakeFiles/AppVersion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AppVersion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AppVersion.dir/clean

CMakeFiles/AppVersion.dir/depend:
	cd /home/joseph/Templates/trojita/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joseph/Templates/trojita /home/joseph/Templates/trojita /home/joseph/Templates/trojita/build /home/joseph/Templates/trojita/build /home/joseph/Templates/trojita/build/CMakeFiles/AppVersion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AppVersion.dir/depend

