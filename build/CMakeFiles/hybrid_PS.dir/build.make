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
include CMakeFiles/hybrid_PS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hybrid_PS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hybrid_PS.dir/flags.make

CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o: CMakeFiles/hybrid_PS.dir/flags.make
CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o: ../hybrid_PS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Neythen/Desktop/masters_project/cpp_optimiser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o -c /Users/Neythen/Desktop/masters_project/cpp_optimiser/hybrid_PS.cpp

CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Neythen/Desktop/masters_project/cpp_optimiser/hybrid_PS.cpp > CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.i

CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Neythen/Desktop/masters_project/cpp_optimiser/hybrid_PS.cpp -o CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.s

CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.requires:

.PHONY : CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.requires

CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.provides: CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.requires
	$(MAKE) -f CMakeFiles/hybrid_PS.dir/build.make CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.provides.build
.PHONY : CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.provides

CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.provides.build: CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o


# Object files for target hybrid_PS
hybrid_PS_OBJECTS = \
"CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o"

# External object files for target hybrid_PS
hybrid_PS_EXTERNAL_OBJECTS =

libhybrid_PS.a: CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o
libhybrid_PS.a: CMakeFiles/hybrid_PS.dir/build.make
libhybrid_PS.a: CMakeFiles/hybrid_PS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Neythen/Desktop/masters_project/cpp_optimiser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libhybrid_PS.a"
	$(CMAKE_COMMAND) -P CMakeFiles/hybrid_PS.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hybrid_PS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hybrid_PS.dir/build: libhybrid_PS.a

.PHONY : CMakeFiles/hybrid_PS.dir/build

CMakeFiles/hybrid_PS.dir/requires: CMakeFiles/hybrid_PS.dir/hybrid_PS.cpp.o.requires

.PHONY : CMakeFiles/hybrid_PS.dir/requires

CMakeFiles/hybrid_PS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hybrid_PS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hybrid_PS.dir/clean

CMakeFiles/hybrid_PS.dir/depend:
	cd /Users/Neythen/Desktop/masters_project/cpp_optimiser/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Neythen/Desktop/masters_project/cpp_optimiser /Users/Neythen/Desktop/masters_project/cpp_optimiser /Users/Neythen/Desktop/masters_project/cpp_optimiser/build /Users/Neythen/Desktop/masters_project/cpp_optimiser/build /Users/Neythen/Desktop/masters_project/cpp_optimiser/build/CMakeFiles/hybrid_PS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hybrid_PS.dir/depend

