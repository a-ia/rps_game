# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build"

# Include any dependencies generated for this target.
include CMakeFiles/rps_game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rps_game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rps_game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rps_game.dir/flags.make

CMakeFiles/rps_game.dir/codegen:
.PHONY : CMakeFiles/rps_game.dir/codegen

CMakeFiles/rps_game.dir/main.cpp.o: CMakeFiles/rps_game.dir/flags.make
CMakeFiles/rps_game.dir/main.cpp.o: /home/angel/Documents/game\ eng/Assignment\ 2\ Sharon\ Sudan/rps_game/main.cpp
CMakeFiles/rps_game.dir/main.cpp.o: CMakeFiles/rps_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rps_game.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rps_game.dir/main.cpp.o -MF CMakeFiles/rps_game.dir/main.cpp.o.d -o CMakeFiles/rps_game.dir/main.cpp.o -c "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/main.cpp"

CMakeFiles/rps_game.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rps_game.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/main.cpp" > CMakeFiles/rps_game.dir/main.cpp.i

CMakeFiles/rps_game.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rps_game.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/main.cpp" -o CMakeFiles/rps_game.dir/main.cpp.s

CMakeFiles/rps_game.dir/game.cpp.o: CMakeFiles/rps_game.dir/flags.make
CMakeFiles/rps_game.dir/game.cpp.o: /home/angel/Documents/game\ eng/Assignment\ 2\ Sharon\ Sudan/rps_game/game.cpp
CMakeFiles/rps_game.dir/game.cpp.o: CMakeFiles/rps_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rps_game.dir/game.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rps_game.dir/game.cpp.o -MF CMakeFiles/rps_game.dir/game.cpp.o.d -o CMakeFiles/rps_game.dir/game.cpp.o -c "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/game.cpp"

CMakeFiles/rps_game.dir/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rps_game.dir/game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/game.cpp" > CMakeFiles/rps_game.dir/game.cpp.i

CMakeFiles/rps_game.dir/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rps_game.dir/game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/game.cpp" -o CMakeFiles/rps_game.dir/game.cpp.s

# Object files for target rps_game
rps_game_OBJECTS = \
"CMakeFiles/rps_game.dir/main.cpp.o" \
"CMakeFiles/rps_game.dir/game.cpp.o"

# External object files for target rps_game
rps_game_EXTERNAL_OBJECTS =

rps_game: CMakeFiles/rps_game.dir/main.cpp.o
rps_game: CMakeFiles/rps_game.dir/game.cpp.o
rps_game: CMakeFiles/rps_game.dir/build.make
rps_game: CMakeFiles/rps_game.dir/compiler_depend.ts
rps_game: CMakeFiles/rps_game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable rps_game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rps_game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rps_game.dir/build: rps_game
.PHONY : CMakeFiles/rps_game.dir/build

CMakeFiles/rps_game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rps_game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rps_game.dir/clean

CMakeFiles/rps_game.dir/depend:
	cd "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game" "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game" "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build" "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build" "/home/angel/Documents/game eng/Assignment 2 Sharon Sudan/rps_game/build/CMakeFiles/rps_game.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/rps_game.dir/depend

