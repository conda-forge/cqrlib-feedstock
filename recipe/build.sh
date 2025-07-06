#! /bin/sh

cmake ${CMAKE_ARGS} "${SRC_DIR}"

cmake --build .
test "${CONDA_BUILD_CROSS_COMPILATION}" != "1" && ctest
cmake --install .
