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

# Utility rule file for build_version.

# Include the progress variables for this target.
include openal-soft/CMakeFiles/build_version.dir/progress.make

openal-soft/CMakeFiles/build_version:
	cd /home/molle/Documents/projects/cppAudio/openal-soft && /usr/bin/cmake -D GIT_EXECUTABLE=/usr/bin/git -D LIB_VERSION=1.21.1 -D LIB_VERSION_NUM=1,21,1,0 -D SRC=/home/molle/Documents/projects/cppAudio/openal-soft/version.h.in -D DST=/home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft/version.h -P /home/molle/Documents/projects/cppAudio/openal-soft/version.cmake

build_version: openal-soft/CMakeFiles/build_version
build_version: openal-soft/CMakeFiles/build_version.dir/build.make

.PHONY : build_version

# Rule to build all files generated by this target.
openal-soft/CMakeFiles/build_version.dir/build: build_version

.PHONY : openal-soft/CMakeFiles/build_version.dir/build

openal-soft/CMakeFiles/build_version.dir/clean:
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && $(CMAKE_COMMAND) -P CMakeFiles/build_version.dir/cmake_clean.cmake
.PHONY : openal-soft/CMakeFiles/build_version.dir/clean

openal-soft/CMakeFiles/build_version.dir/depend:
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/molle/Documents/projects/cppAudio /home/molle/Documents/projects/cppAudio/openal-soft /home/molle/Documents/projects/cppAudio/cmake-build-debug /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft/CMakeFiles/build_version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openal-soft/CMakeFiles/build_version.dir/depend
