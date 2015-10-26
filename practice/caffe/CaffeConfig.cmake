# Config file for the Caffe package.
#
# Note:
#   Caffe and this config file depends on opencv,
#   so put `find_package(OpenCV)` before searching Caffe
#   via `find_package(Caffe)`. All other lib/includes
#   dependencies are hard coded in the file
#
# After successful configuration the following variables
# will be defined:
#
#   Caffe_INCLUDE_DIRS - Caffe include directories
#   Caffe_LIBRARIES    - libraries to link against
#   Caffe_DEFINITIONS  - a list of definitions to pass to compiler
#
#   Caffe_HAVE_CUDA    - signals about CUDA support
#   Caffe_HAVE_CUDNN   - signals about cuDNN support


# OpenCV dependency (optional)

if(ON)
  if(NOT OpenCV_FOUND)
    set(Caffe_OpenCV_CONFIG_PATH "/usr/local/opencv-3.0.0")
    if(Caffe_OpenCV_CONFIG_PATH)
      get_filename_component(Caffe_OpenCV_CONFIG_PATH ${Caffe_OpenCV_CONFIG_PATH} ABSOLUTE)

      if(EXISTS ${Caffe_OpenCV_CONFIG_PATH} AND NOT TARGET opencv_core)
        message(STATUS "Caffe: using OpenCV config from ${Caffe_OpenCV_CONFIG_PATH}")
        include(${Caffe_OpenCV_CONFIG_PATH}/OpenCVModules.cmake)
      endif()

    else()
      find_package(OpenCV REQUIRED)
    endif()
    unset(Caffe_OpenCV_CONFIG_PATH)
  endif()
endif()

# Compute paths
get_filename_component(Caffe_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(Caffe_INCLUDE_DIRS "/home/xskriv01/DIP/Anonymization-NN/practice/caffe/src;/usr/include;/home/xskriv01/DIP/Anonymization-NN/practice/caffe/include;/usr/local/hdf5-serial;/usr/local/cuda/include;/usr/local/opencv-3.0.0;/home/jarosjir/Install/opencv-3.0.0/include;/home/jarosjir/Install/opencv-3.0.0/include/opencv;/home/jarosjir/Install/opencv-3.0.0/modules/hal/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudev/include;/home/jarosjir/Install/opencv-3.0.0/modules/core/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudaarithm/include;/home/jarosjir/Install/opencv-3.0.0/modules/flann/include;/home/jarosjir/Install/opencv-3.0.0/modules/imgproc/include;/home/jarosjir/Install/opencv-3.0.0/modules/ml/include;/home/jarosjir/Install/opencv-3.0.0/modules/video/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudabgsegm/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudafilters/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudaimgproc/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudawarping/include;/home/jarosjir/Install/opencv-3.0.0/modules/imgcodecs/include;/home/jarosjir/Install/opencv-3.0.0/modules/photo/include;/home/jarosjir/Install/opencv-3.0.0/modules/shape/include;/home/jarosjir/Install/opencv-3.0.0/modules/videoio/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudacodec/include;/home/jarosjir/Install/opencv-3.0.0/modules/highgui/include;/home/jarosjir/Install/opencv-3.0.0/modules/objdetect/include;/home/jarosjir/Install/opencv-3.0.0/modules/ts/include;/home/jarosjir/Install/opencv-3.0.0/modules/features2d/include;/home/jarosjir/Install/opencv-3.0.0/modules/calib3d/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudafeatures2d/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudalegacy/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudaobjdetect/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudaoptflow/include;/home/jarosjir/Install/opencv-3.0.0/modules/cudastereo/include;/home/jarosjir/Install/opencv-3.0.0/modules/stitching/include;/home/jarosjir/Install/opencv-3.0.0/modules/superres/include;/home/jarosjir/Install/opencv-3.0.0/modules/videostab/include;/usr/local/intel/composer_xe_2015.2.164/mkl/include")



# Our library dependencies
if(NOT TARGET caffe AND NOT caffe_BINARY_DIR)
  include("${Caffe_CMAKE_DIR}/CaffeTargets.cmake")
endif()

# List of IMPORTED libs created by CaffeTargets.cmake
set(Caffe_LIBRARIES caffe)

# Definitions
set(Caffe_DEFINITIONS "-DUSE_OPENCV;-DUSE_LMDB;-DUSE_LEVELDB;-DUSE_MKL")

# Cuda support variables
set(Caffe_CPU_ONLY OFF)
set(Caffe_HAVE_CUDA TRUE)
set(Caffe_HAVE_CUDNN FALSE)
