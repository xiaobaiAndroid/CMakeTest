# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/bzf/Desktop/Cmake/Demo4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/bzf/Desktop/Cmake/Demo4/build

# Include any dependencies generated for this target.
include CMakeFiles/Demo4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Demo4.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Demo4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Demo4.dir/flags.make

CMakeFiles/Demo4.dir/main.cpp.o: CMakeFiles/Demo4.dir/flags.make
CMakeFiles/Demo4.dir/main.cpp.o: ../main.cpp
CMakeFiles/Demo4.dir/main.cpp.o: CMakeFiles/Demo4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bzf/Desktop/Cmake/Demo4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Demo4.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Demo4.dir/main.cpp.o -MF CMakeFiles/Demo4.dir/main.cpp.o.d -o CMakeFiles/Demo4.dir/main.cpp.o -c /Users/bzf/Desktop/Cmake/Demo4/main.cpp

CMakeFiles/Demo4.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo4.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bzf/Desktop/Cmake/Demo4/main.cpp > CMakeFiles/Demo4.dir/main.cpp.i

CMakeFiles/Demo4.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo4.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bzf/Desktop/Cmake/Demo4/main.cpp -o CMakeFiles/Demo4.dir/main.cpp.s

# Object files for target Demo4
Demo4_OBJECTS = \
"CMakeFiles/Demo4.dir/main.cpp.o"

# External object files for target Demo4
Demo4_EXTERNAL_OBJECTS =

Demo4: CMakeFiles/Demo4.dir/main.cpp.o
Demo4: CMakeFiles/Demo4.dir/build.make
Demo4: math/libMathFunctions.a
Demo4: CMakeFiles/Demo4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/bzf/Desktop/Cmake/Demo4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Demo4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Demo4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Demo4.dir/build: Demo4
.PHONY : CMakeFiles/Demo4.dir/build

CMakeFiles/Demo4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Demo4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Demo4.dir/clean

CMakeFiles/Demo4.dir/depend:
	cd /Users/bzf/Desktop/Cmake/Demo4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/bzf/Desktop/Cmake/Demo4 /Users/bzf/Desktop/Cmake/Demo4 /Users/bzf/Desktop/Cmake/Demo4/build /Users/bzf/Desktop/Cmake/Demo4/build /Users/bzf/Desktop/Cmake/Demo4/build/CMakeFiles/Demo4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Demo4.dir/depend

