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
CMAKE_SOURCE_DIR = /home/adrien/Programmation/Projets/Quant/Trading

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adrien/Programmation/Projets/Quant/Trading/build

# Include any dependencies generated for this target.
include CMakeFiles/trading.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/trading.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/trading.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trading.dir/flags.make

CMakeFiles/trading.dir/codegen:
.PHONY : CMakeFiles/trading.dir/codegen

CMakeFiles/trading.dir/src/main.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/main.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/main.cpp
CMakeFiles/trading.dir/src/main.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/trading.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/main.cpp.o -MF CMakeFiles/trading.dir/src/main.cpp.o.d -o CMakeFiles/trading.dir/src/main.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/main.cpp

CMakeFiles/trading.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/main.cpp > CMakeFiles/trading.dir/src/main.cpp.i

CMakeFiles/trading.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/main.cpp -o CMakeFiles/trading.dir/src/main.cpp.s

CMakeFiles/trading.dir/src/Products/Product.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/Products/Product.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Product.cpp
CMakeFiles/trading.dir/src/Products/Product.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/trading.dir/src/Products/Product.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/Products/Product.cpp.o -MF CMakeFiles/trading.dir/src/Products/Product.cpp.o.d -o CMakeFiles/trading.dir/src/Products/Product.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Product.cpp

CMakeFiles/trading.dir/src/Products/Product.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/Products/Product.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Product.cpp > CMakeFiles/trading.dir/src/Products/Product.cpp.i

CMakeFiles/trading.dir/src/Products/Product.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/Products/Product.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Product.cpp -o CMakeFiles/trading.dir/src/Products/Product.cpp.s

CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/Option.cpp
CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o -MF CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o.d -o CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/Option.cpp

CMakeFiles/trading.dir/src/Products/Options/Option.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/Products/Options/Option.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/Option.cpp > CMakeFiles/trading.dir/src/Products/Options/Option.cpp.i

CMakeFiles/trading.dir/src/Products/Options/Option.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/Products/Options/Option.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/Option.cpp -o CMakeFiles/trading.dir/src/Products/Options/Option.cpp.s

CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/CallEuropean.cpp
CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o -MF CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o.d -o CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/CallEuropean.cpp

CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/CallEuropean.cpp > CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.i

CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/Products/Options/CallEuropean.cpp -o CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.s

CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketTypes.cpp
CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o -MF CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o.d -o CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketTypes.cpp

CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketTypes.cpp > CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.i

CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketTypes.cpp -o CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.s

CMakeFiles/trading.dir/src/Markets/Market.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/Markets/Market.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/Market.cpp
CMakeFiles/trading.dir/src/Markets/Market.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/trading.dir/src/Markets/Market.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/Markets/Market.cpp.o -MF CMakeFiles/trading.dir/src/Markets/Market.cpp.o.d -o CMakeFiles/trading.dir/src/Markets/Market.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/Market.cpp

CMakeFiles/trading.dir/src/Markets/Market.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/Markets/Market.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/Market.cpp > CMakeFiles/trading.dir/src/Markets/Market.cpp.i

CMakeFiles/trading.dir/src/Markets/Market.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/Markets/Market.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/Market.cpp -o CMakeFiles/trading.dir/src/Markets/Market.cpp.s

CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketBuilder.cpp
CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o -MF CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o.d -o CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketBuilder.cpp

CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketBuilder.cpp > CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.i

CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketBuilder.cpp -o CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.s

CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o: CMakeFiles/trading.dir/flags.make
CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o: /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketUtils.cpp
CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o: CMakeFiles/trading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o -MF CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o.d -o CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o -c /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketUtils.cpp

CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketUtils.cpp > CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.i

CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/adrien/Programmation/Projets/Quant/Trading/src/Markets/MarketUtils.cpp -o CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.s

# Object files for target trading
trading_OBJECTS = \
"CMakeFiles/trading.dir/src/main.cpp.o" \
"CMakeFiles/trading.dir/src/Products/Product.cpp.o" \
"CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o" \
"CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o" \
"CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o" \
"CMakeFiles/trading.dir/src/Markets/Market.cpp.o" \
"CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o" \
"CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o"

# External object files for target trading
trading_EXTERNAL_OBJECTS =

trading: CMakeFiles/trading.dir/src/main.cpp.o
trading: CMakeFiles/trading.dir/src/Products/Product.cpp.o
trading: CMakeFiles/trading.dir/src/Products/Options/Option.cpp.o
trading: CMakeFiles/trading.dir/src/Products/Options/CallEuropean.cpp.o
trading: CMakeFiles/trading.dir/src/Markets/MarketTypes.cpp.o
trading: CMakeFiles/trading.dir/src/Markets/Market.cpp.o
trading: CMakeFiles/trading.dir/src/Markets/MarketBuilder.cpp.o
trading: CMakeFiles/trading.dir/src/Markets/MarketUtils.cpp.o
trading: CMakeFiles/trading.dir/build.make
trading: CMakeFiles/trading.dir/compiler_depend.ts
trading: CMakeFiles/trading.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable trading"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trading.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/trading.dir/build: trading
.PHONY : CMakeFiles/trading.dir/build

CMakeFiles/trading.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trading.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trading.dir/clean

CMakeFiles/trading.dir/depend:
	cd /home/adrien/Programmation/Projets/Quant/Trading/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adrien/Programmation/Projets/Quant/Trading /home/adrien/Programmation/Projets/Quant/Trading /home/adrien/Programmation/Projets/Quant/Trading/build /home/adrien/Programmation/Projets/Quant/Trading/build /home/adrien/Programmation/Projets/Quant/Trading/build/CMakeFiles/trading.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/trading.dir/depend

