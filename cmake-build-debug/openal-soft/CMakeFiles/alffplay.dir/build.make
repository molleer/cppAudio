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
include openal-soft/CMakeFiles/alffplay.dir/depend.make

# Include the progress variables for this target.
include openal-soft/CMakeFiles/alffplay.dir/progress.make

# Include the compile flags for this target's objects.
include openal-soft/CMakeFiles/alffplay.dir/flags.make

openal-soft/CMakeFiles/alffplay.dir/examples/alffplay.cpp.o: openal-soft/CMakeFiles/alffplay.dir/flags.make
openal-soft/CMakeFiles/alffplay.dir/examples/alffplay.cpp.o: ../openal-soft/examples/alffplay.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/molle/Documents/projects/cppAudio/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openal-soft/CMakeFiles/alffplay.dir/examples/alffplay.cpp.o"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/alffplay.dir/examples/alffplay.cpp.o -c /home/molle/Documents/projects/cppAudio/openal-soft/examples/alffplay.cpp

openal-soft/CMakeFiles/alffplay.dir/examples/alffplay.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alffplay.dir/examples/alffplay.cpp.i"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/molle/Documents/projects/cppAudio/openal-soft/examples/alffplay.cpp > CMakeFiles/alffplay.dir/examples/alffplay.cpp.i

openal-soft/CMakeFiles/alffplay.dir/examples/alffplay.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alffplay.dir/examples/alffplay.cpp.s"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/molle/Documents/projects/cppAudio/openal-soft/examples/alffplay.cpp -o CMakeFiles/alffplay.dir/examples/alffplay.cpp.s

# Object files for target alffplay
alffplay_OBJECTS = \
"CMakeFiles/alffplay.dir/examples/alffplay.cpp.o"

# External object files for target alffplay
alffplay_EXTERNAL_OBJECTS =

openal-soft/alffplay: openal-soft/CMakeFiles/alffplay.dir/examples/alffplay.cpp.o
openal-soft/alffplay: openal-soft/CMakeFiles/alffplay.dir/build.make
openal-soft/alffplay: /usr/lib/libSDL2main.a
openal-soft/alffplay: /usr/lib/libSDL2.so
openal-soft/alffplay: /usr/lib/libavformat.so
openal-soft/alffplay: /usr/lib/libavcodec.so
openal-soft/alffplay: /usr/lib/libavutil.so
openal-soft/alffplay: /usr/lib/libswscale.so
openal-soft/alffplay: /usr/lib/libswresample.so
openal-soft/alffplay: /usr/lib/libz.so
openal-soft/alffplay: openal-soft/libex-common.a
openal-soft/alffplay: openal-soft/libopenal.so.1.21.1
openal-soft/alffplay: openal-soft/CMakeFiles/alffplay.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/molle/Documents/projects/cppAudio/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable alffplay"
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alffplay.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openal-soft/CMakeFiles/alffplay.dir/build: openal-soft/alffplay

.PHONY : openal-soft/CMakeFiles/alffplay.dir/build

openal-soft/CMakeFiles/alffplay.dir/clean:
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft && $(CMAKE_COMMAND) -P CMakeFiles/alffplay.dir/cmake_clean.cmake
.PHONY : openal-soft/CMakeFiles/alffplay.dir/clean

openal-soft/CMakeFiles/alffplay.dir/depend:
	cd /home/molle/Documents/projects/cppAudio/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/molle/Documents/projects/cppAudio /home/molle/Documents/projects/cppAudio/openal-soft /home/molle/Documents/projects/cppAudio/cmake-build-debug /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft /home/molle/Documents/projects/cppAudio/cmake-build-debug/openal-soft/CMakeFiles/alffplay.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openal-soft/CMakeFiles/alffplay.dir/depend
