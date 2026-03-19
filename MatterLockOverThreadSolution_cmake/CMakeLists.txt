# Define minimal required version of CMake.
cmake_minimum_required(VERSION "3.25")

# Project definition
project(MatterLockOverThreadSolution)

include(ExternalProject)

ExternalProject_Add(MatterLockOverThread
  SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/../MatterLockOverThread/cmake_gcc
  BINARY_DIR ${CMAKE_CURRENT_LIST_DIR}/../MatterLockOverThread/cmake_gcc/build
  CMAKE_ARGS --preset project
  BUILD_COMMAND ${CMAKE_COMMAND} --build . --config $<CONFIG>
  INSTALL_COMMAND ""
  BUILD_ALWAYS true
  USES_TERMINAL_BUILD 1
  WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/../MatterLockOverThread/cmake_gcc
)
ExternalProject_Add(Matter-Bootloader
  SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/../Matter-Bootloader/cmake_gcc
  BINARY_DIR ${CMAKE_CURRENT_LIST_DIR}/../Matter-Bootloader/cmake_gcc/build
  CMAKE_ARGS --preset project
  BUILD_COMMAND ${CMAKE_COMMAND} --build . --config $<CONFIG>
  INSTALL_COMMAND ""
  BUILD_ALWAYS true
  USES_TERMINAL_BUILD 1
  WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/../Matter-Bootloader/cmake_gcc
)

ExternalProject_Add_StepDependencies(Matter-Bootloader build MatterLockOverThread)


set(post_build_command ${POST_BUILD_EXE} postbuild "./MatterLockOverThreadSolution.slpb")


add_custom_target(postbuild ALL
    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/..
    COMMAND ${post_build_command}
)

add_dependencies(postbuild MatterLockOverThread Matter-Bootloader)

# BEGIN_SIMPLICITY_STUDIO_METADATA=eJytUl9LwzAQ/yqhiMwHm6ngQ62Kbj4U2lXsBIXAyNLTxaVJTbJVEL+75+a2DjaffMzlfv/u7jMokuw+TXrJ8HlUDB/7ST4q8vRxmOSDUZb379IgCuLrj0qROVgnjb5kwUnYZQEBLUwp9SsWbopekrDg+opZpuOsMGrmsdURxGkXfTiJTRPv64jSpmnC5iw09pWedrsn9ClLCzGBih9L7TzXApAbEZE2A16Bq7mAZUNqBPdLBy0uJxUfu1CYijpHV9IhCGORaeGIkNj91n/fWFl1ZqacKXiAF7CYCByRJQo4JcLG2OlCPiy55yygLXA/68OL1PKHYT9iDUBIbZwfz6QqCw916wO/NuWDDuaouC7BHpE1ghy+z4y/OOisUhzRjHsPFicyzXEvw4kFXq6zO1WPl5CY7pKM6T4zcW3NGwhPNI4eQ+2SwfWozSZ6EWPr2IzNz0eM/WVu9297uPtcHN8a45XhOJv/sbBF2Fou3dru6oLo1gnFdHPli0Lw9Q1q1CiS=END_SIMPLICITY_STUDIO_METADATA