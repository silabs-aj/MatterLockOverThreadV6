# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/../MatterLockOverThread/cmake_gcc")
  file(MAKE_DIRECTORY "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/../MatterLockOverThread/cmake_gcc")
endif()
file(MAKE_DIRECTORY
  "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/../MatterLockOverThread/cmake_gcc/build"
  "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/build/MatterLockOverThread-prefix"
  "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/build/MatterLockOverThread-prefix/tmp"
  "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/build/MatterLockOverThread-prefix/src/MatterLockOverThread-stamp"
  "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/build/MatterLockOverThread-prefix/src"
  "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/build/MatterLockOverThread-prefix/src/MatterLockOverThread-stamp"
)

set(configSubDirs base)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/build/MatterLockOverThread-prefix/src/MatterLockOverThread-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/workspace/v6_/MatterLockOverThreadSolution/MatterLockOverThreadSolution_cmake/build/MatterLockOverThread-prefix/src/MatterLockOverThread-stamp${cfgdir}") # cfgdir has leading slash
endif()
