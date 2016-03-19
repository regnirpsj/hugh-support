# -*- Mode:cmake -*-

####################################################################################################
#                                                                                                  #
# Copyright (C) 2016 University of Hull                                                            #
#                                                                                                  #
####################################################################################################

set(CMAKE_LIBRARY_TYPE "STATIC")

set(DISABLED_WARNINGS)

# unknown pragma
#list(APPEND DISABLED_WARNINGS "/wd4068")

# nonstandard extension used : nameless struct/union
list(APPEND DISABLED_WARNINGS "/wd4201")
                                                      
if("SHARED" STREQUAL "${CMAKE_LIBRARY_TYPE}")
  # 'identifier' : class 'type' needs to have dll-interface to be used by clients of class 'type2'
  #list(APPEND DISABLED_WARNINGS "/wd4251")
endif()

# new behavior: elements of array '*' will be default initialized  
#list(APPEND DISABLED_WARNINGS "/wd4351")

# 'identifier': unreferenced local function has been removed
#list(APPEND DISABLED_WARNINGS "/wd4505")

# assignment operator could not be generated
list(APPEND DISABLED_WARNINGS "/wd4512")

# default template arguments are only allowed on a class template
#list(APPEND DISABLED_WARNINGS "/wd4519")

# unreachable code (somewhere in boost)
#list(APPEND DISABLED_WARNINGS "/wd4702")

string(REGEX REPLACE ";" " " DISABLED_WARNINGS "${DISABLED_WARNINGS}") # ";" -> " "

set(GLOBAL_COMPILER_FLAGS)
set(GLOBAL_COMPILER_FLAGS "${GLOBAL_COMPILER_FLAGS} /W4")  # warn almost everything
set(GLOBAL_COMPILER_FLAGS "${GLOBAL_COMPILER_FLAGS} ${DISABLED_WARNINGS}")
set(GLOBAL_COMPILER_FLAGS "${GLOBAL_COMPILER_FLAGS} /EHa") # exception-handling for asynchronous
                                                           # (structured) and synchronous (C++)
                                                           # exceptions

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GLOBAL_COMPILER_FLAGS}")
    
# avoid pulling all of windows.h
add_definitions("-DWIN32_LEAN_AND_MEAN")
# http://stackoverflow.com/questions/5004858/stdmin-gives-error
add_definitions("-DNOMINMAX")
# get rid of (stupid/obfuscated) security warnings
#add_definitions("-D_CRT_SECURE_NO_DEPRECATE")
#add_definitions("-D_CRT_SECURE_NO_WARNINGS")
#add_definitions("-D_CRT_NONSTDC_NO_DEPRECATE")
#add_definitions("-D_SCL_SECURE_NO_WARNINGS")
#add_definitions("-D_SCL_SECURE_NO_DEPRECATE")
#add_definitions("-D_SECURE_SCL=0")
# doesn't work with default boost-library selection
# add_definitions("-D_HAS_ITERATOR_DEBUGGING=0")

# D3D11
add_definitions("-DD3D11_NO_HELPERS") # see ${WindowsSDK_ROOT_DIR}\Include\um\d3d11.idl
