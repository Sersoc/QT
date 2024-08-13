# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appQuickTest_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appQuickTest_autogen.dir\\ParseCache.txt"
  "appQuickTest_autogen"
  )
endif()
