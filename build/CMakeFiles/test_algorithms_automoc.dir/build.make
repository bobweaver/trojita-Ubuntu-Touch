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

# Utility rule file for test_algorithms_automoc.

# Include the progress variables for this target.
include CMakeFiles/test_algorithms_automoc.dir/progress.make

CMakeFiles/test_algorithms_automoc:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/joseph/Templates/trojita/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Automoc for target test_algorithms"
	/usr/bin/cmake -E cmake_automoc /home/joseph/Templates/trojita/build/CMakeFiles/test_algorithms_automoc.dir/ ""

test_algorithms_automoc: CMakeFiles/test_algorithms_automoc
test_algorithms_automoc: CMakeFiles/test_algorithms_automoc.dir/build.make
.PHONY : test_algorithms_automoc

# Rule to build all files generated by this target.
CMakeFiles/test_algorithms_automoc.dir/build: test_algorithms_automoc
.PHONY : CMakeFiles/test_algorithms_automoc.dir/build

CMakeFiles/test_algorithms_automoc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_algorithms_automoc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_algorithms_automoc.dir/clean

CMakeFiles/test_algorithms_automoc.dir/depend:
	cd /home/joseph/Templates/trojita/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joseph/Templates/trojita /home/joseph/Templates/trojita /home/joseph/Templates/trojita/build /home/joseph/Templates/trojita/build /home/joseph/Templates/trojita/build/CMakeFiles/test_algorithms_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_algorithms_automoc.dir/depend

