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
include CMakeFiles/test_SqlCache.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_SqlCache.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_SqlCache.dir/flags.make

CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o: CMakeFiles/test_SqlCache.dir/flags.make
CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o: ../tests/Misc/test_SqlCache.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/joseph/Templates/trojita/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o -c /home/joseph/Templates/trojita/tests/Misc/test_SqlCache.cpp

CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/joseph/Templates/trojita/tests/Misc/test_SqlCache.cpp > CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.i

CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/joseph/Templates/trojita/tests/Misc/test_SqlCache.cpp -o CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.s

CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.requires:
.PHONY : CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.requires

CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.provides: CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_SqlCache.dir/build.make CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.provides.build
.PHONY : CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.provides

CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.provides.build: CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o

CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o: CMakeFiles/test_SqlCache.dir/flags.make
CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o: test_SqlCache_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/joseph/Templates/trojita/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o -c /home/joseph/Templates/trojita/build/test_SqlCache_automoc.cpp

CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/joseph/Templates/trojita/build/test_SqlCache_automoc.cpp > CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.i

CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/joseph/Templates/trojita/build/test_SqlCache_automoc.cpp -o CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.s

CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.requires:
.PHONY : CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.requires

CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.provides: CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_SqlCache.dir/build.make CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.provides.build
.PHONY : CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.provides

CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.provides.build: CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o

# Object files for target test_SqlCache
test_SqlCache_OBJECTS = \
"CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o" \
"CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o"

# External object files for target test_SqlCache
test_SqlCache_EXTERNAL_OBJECTS =

test_SqlCache: CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o
test_SqlCache: CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o
test_SqlCache: CMakeFiles/test_SqlCache.dir/build.make
test_SqlCache: libImap.a
test_SqlCache: libMSA.a
test_SqlCache: libStreams.a
test_SqlCache: libCommon.a
test_SqlCache: libComposer.a
test_SqlCache: libtest_LibMailboxSync.a
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Network.so.5.0.2
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Sql.so.5.0.2
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Test.so.5.0.2
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Widgets.so.5.0.2
test_SqlCache: /usr/lib/i386-linux-gnu/libz.so
test_SqlCache: libComposer.a
test_SqlCache: libMSA.a
test_SqlCache: libImap.a
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Sql.so.5.0.2
test_SqlCache: libStreams.a
test_SqlCache: /usr/lib/i386-linux-gnu/libz.so
test_SqlCache: libCommon.a
test_SqlCache: libqwwsmtpclient.a
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Network.so.5.0.2
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Gui.so.5.0.2
test_SqlCache: /usr/lib/i386-linux-gnu/libQt5Core.so.5.0.2
test_SqlCache: CMakeFiles/test_SqlCache.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test_SqlCache"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_SqlCache.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_SqlCache.dir/build: test_SqlCache
.PHONY : CMakeFiles/test_SqlCache.dir/build

CMakeFiles/test_SqlCache.dir/requires: CMakeFiles/test_SqlCache.dir/tests/Misc/test_SqlCache.cpp.o.requires
CMakeFiles/test_SqlCache.dir/requires: CMakeFiles/test_SqlCache.dir/test_SqlCache_automoc.cpp.o.requires
.PHONY : CMakeFiles/test_SqlCache.dir/requires

CMakeFiles/test_SqlCache.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_SqlCache.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_SqlCache.dir/clean

CMakeFiles/test_SqlCache.dir/depend:
	cd /home/joseph/Templates/trojita/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joseph/Templates/trojita /home/joseph/Templates/trojita /home/joseph/Templates/trojita/build /home/joseph/Templates/trojita/build /home/joseph/Templates/trojita/build/CMakeFiles/test_SqlCache.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_SqlCache.dir/depend

