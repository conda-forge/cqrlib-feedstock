@echo off

cmake %CMAKE_ARGS% "%SRC_DIR%"
if errorlevel 1 exit /b 1

cmake --build . --config Release
if errorlevel 1 exit /b 1

ctest --build-config Release
if errorlevel 1 exit /b 1

cmake --install .
if errorlevel 1 exit /b 1
