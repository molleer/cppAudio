# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/molle/Documents/projects/cppAudio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/molle/Documents/projects/cppAudio/cmake-build-debug

# Include any dependencies generated for this target.
include openal-soft/CMakeFiles/alplay.dir/depend.make

# Include the progress variables for this target.
include openal-soft/CMakeFiles/alplay.dir/progress.make

# Include the compile flags for this target's objects.
include openal-soft/CMakeFiles/alplay.dir/flags.make

openal-soft/CMakeFiles/alplay.dir/examples/alplay.c.o: openal-soft/CMakeFiles/alplay.dir/flags.make
openal-soft/CMakeFiles/alplay.dir/examples/alplay.c.o: ../openal-soft/examples/alplay.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/molle/Documents/projects/cppAudio/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object openal-soft/CMakeFiles/alplay.dir/examples/alplay.c.o"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/alplay.dir/examples/alplay.c.o -c /home/molle/Documents/projects/cppAudio/openal-soft/examples/alplay.c

openal-soft/CMakeFiles/alplay.dir/examples/alplay.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/alplay.dir/examples/alplay.c.i"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/molle/Documents/projects/cppAudio/openal-soft/examples/alplay.c > CMakeFiles/alplay.dir/examples/alplay.c.i

openal-soft/CMakeFiles/alplay.dir/examples/alplay.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/alplay.dir/examples/alplay.c.s"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/molle/Documents/projects/cppAudio/openal-soft/examples/alplay.c -o CMakeFiles/alplay.dir/examples/alplay.c.s

# Object files for target alplay
alplay_OBJECTS = \
"CMakeFiles/alplay.dir/examples/alplay.c.o"

# External object files for target alplay
alplay_EXTERNAL_OBJECTS =

openal-soft/alplay: openal-soft/CMakeFiles/alplay.dir/examples/alplay.c.o
openal-soft/alplay: openal-soft/CMakeFiles/alplay.dir/build.make
openal-soft/alplay: /usr/lib/libsndfile.so
openal-soft/alplay: openal-soft/libex-common.a
openal-soft/alplay: openal-soft/libopenal.so.1.21.1
openal-soft/alplay: openal-soft/CMakeFiles/alplay.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/molle/Documents/projects/cppAudio/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable alplay"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alplay.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openal-soft/CMakeFiles/alplay.dir/build: openal-soft/alplay

.PHONY : openal-soft/CMakeFiles/alplay.dir/build

openal-soft/CMakeFiles/alplay.dir/clean:
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && $(CMAKE_COMMAND) -P CMakeFiles/alplay.dir/cmake_clean.cmake
.PHONY : openal-soft/CMakeFiles/alplay.dir/clean

openal-soft/CMakeFiles/alplay.dir/depend:
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/molle/Documents/projects/cppAudio /home/molle/Documents/projects/cppAudio/openal-soft /home/molle/Documents/projects/cppAudio/cmake-build-debug /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft/CMakeFiles/alplay.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openal-soft/CMakeFiles/alplay.dir/depend
