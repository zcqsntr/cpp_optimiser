# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Users/Neythen/anaconda3/bin/cmake

# The command to remove a file.
RM = /Users/Neythen/anaconda3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Neythen/Desktop/masters_project/cpp_optimiser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Neythen/Desktop/masters_project/cpp_optimiser/build

# Include any dependencies generated for this target.
include CMakeFiles/testing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testing.dir/flags.make

CMakeFiles/testing.dir/test.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/test.cpp.o: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Neythen/Desktop/masters_project/cpp_optimiser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testing.dir/test.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testing.dir/test.cpp.o -c /Users/Neythen/Desktop/masters_project/cpp_optimiser/test.cpp

CMakeFiles/testing.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/test.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Neythen/Desktop/masters_project/cpp_optimiser/test.cpp > CMakeFiles/testing.dir/test.cpp.i

CMakeFiles/testing.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/test.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Neythen/Desktop/masters_project/cpp_optimiser/test.cpp -o CMakeFiles/testing.dir/test.cpp.s

CMakeFiles/testing.dir/test.cpp.o.requires:

.PHONY : CMakeFiles/testing.dir/test.cpp.o.requires

CMakeFiles/testing.dir/test.cpp.o.provides: CMakeFiles/testing.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/testing.dir/build.make CMakeFiles/testing.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/testing.dir/test.cpp.o.provides

CMakeFiles/testing.dir/test.cpp.o.provides.build: CMakeFiles/testing.dir/test.cpp.o


# Object files for target testing
testing_OBJECTS = \
"CMakeFiles/testing.dir/test.cpp.o"

# External object files for target testing
testing_EXTERNAL_OBJECTS =

testing: CMakeFiles/testing.dir/test.cpp.o
testing: CMakeFiles/testing.dir/build.make
testing: libhybrid_PS.a
testing: CMakeFiles/testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Neythen/Desktop/masters_project/cpp_optimiser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testing.dir/build: testing

.PHONY : CMakeFiles/testing.dir/build

CMakeFiles/testing.dir/requires: CMakeFiles/testing.dir/test.cpp.o.requires

.PHONY : CMakeFiles/testing.dir/requires

CMakeFiles/testing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testing.dir/clean

CMakeFiles/testing.dir/depend:
	cd /Users/Neythen/Desktop/masters_project/cpp_optimiser/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Neythen/Desktop/masters_project/cpp_optimiser /Users/Neythen/Desktop/masters_project/cpp_optimiser /Users/Neythen/Desktop/masters_project/cpp_optimiser/build /Users/Neythen/Desktop/masters_project/cpp_optimiser/build /Users/Neythen/Desktop/masters_project/cpp_optimiser/build/CMakeFiles/testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testing.dir/depend

