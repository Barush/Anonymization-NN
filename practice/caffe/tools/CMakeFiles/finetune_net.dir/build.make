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
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xskriv01/DIP/Anonymization-NN/practice/caffe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xskriv01/DIP/Anonymization-NN/practice/caffe

# Include any dependencies generated for this target.
include tools/CMakeFiles/finetune_net.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/finetune_net.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/finetune_net.dir/flags.make

tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o: tools/CMakeFiles/finetune_net.dir/flags.make
tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o: tools/finetune_net.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/xskriv01/DIP/Anonymization-NN/practice/caffe/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o"
	cd /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/finetune_net.dir/finetune_net.cpp.o -c /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools/finetune_net.cpp

tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/finetune_net.dir/finetune_net.cpp.i"
	cd /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools/finetune_net.cpp > CMakeFiles/finetune_net.dir/finetune_net.cpp.i

tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/finetune_net.dir/finetune_net.cpp.s"
	cd /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools/finetune_net.cpp -o CMakeFiles/finetune_net.dir/finetune_net.cpp.s

tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.requires:
.PHONY : tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.requires

tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.provides: tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/finetune_net.dir/build.make tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.provides.build
.PHONY : tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.provides

tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.provides.build: tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o

# Object files for target finetune_net
finetune_net_OBJECTS = \
"CMakeFiles/finetune_net.dir/finetune_net.cpp.o"

# External object files for target finetune_net
finetune_net_EXTERNAL_OBJECTS =

tools/finetune_net: tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o
tools/finetune_net: tools/CMakeFiles/finetune_net.dir/build.make
tools/finetune_net: lib/libcaffe.so
tools/finetune_net: lib/libproto.a
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libboost_system.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libpthread.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libglog.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libgflags.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libprotobuf.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libglog.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libgflags.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libprotobuf.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/liblmdb.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libleveldb.so
tools/finetune_net: /usr/lib/libsnappy.so
tools/finetune_net: /usr/local/cuda/lib64/libcudart.so
tools/finetune_net: /usr/local/cuda/lib64/libcurand.so
tools/finetune_net: /usr/local/cuda/lib64/libcublas.so
tools/finetune_net: /home/jarosjir/Install/opencv-3.0.0/lib/libopencv_highgui.so.3.0.0
tools/finetune_net: /home/jarosjir/Install/opencv-3.0.0/lib/libopencv_imgcodecs.so.3.0.0
tools/finetune_net: /home/jarosjir/Install/opencv-3.0.0/lib/libopencv_imgproc.so.3.0.0
tools/finetune_net: /home/jarosjir/Install/opencv-3.0.0/lib/libopencv_core.so.3.0.0
tools/finetune_net: /home/jarosjir/Install/opencv-3.0.0/lib/libopencv_cudev.so.3.0.0
tools/finetune_net: /home/jarosjir/Install/opencv-3.0.0/lib/libopencv_hal.a
tools/finetune_net: /usr/local/intel/composer_xe_2015.2.164/mkl/lib/intel64/libmkl_rt.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libpython2.7.so
tools/finetune_net: /usr/lib/x86_64-linux-gnu/libboost_python.so
tools/finetune_net: tools/CMakeFiles/finetune_net.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable finetune_net"
	cd /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/finetune_net.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/finetune_net.dir/build: tools/finetune_net
.PHONY : tools/CMakeFiles/finetune_net.dir/build

tools/CMakeFiles/finetune_net.dir/requires: tools/CMakeFiles/finetune_net.dir/finetune_net.cpp.o.requires
.PHONY : tools/CMakeFiles/finetune_net.dir/requires

tools/CMakeFiles/finetune_net.dir/clean:
	cd /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools && $(CMAKE_COMMAND) -P CMakeFiles/finetune_net.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/finetune_net.dir/clean

tools/CMakeFiles/finetune_net.dir/depend:
	cd /home/xskriv01/DIP/Anonymization-NN/practice/caffe && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xskriv01/DIP/Anonymization-NN/practice/caffe /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools /home/xskriv01/DIP/Anonymization-NN/practice/caffe /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools /home/xskriv01/DIP/Anonymization-NN/practice/caffe/tools/CMakeFiles/finetune_net.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/finetune_net.dir/depend
