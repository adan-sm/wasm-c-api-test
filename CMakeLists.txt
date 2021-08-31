cmake_minimum_required(VERSION 3.10)

# set the project name
project(WasmCApiPlayground)

# include the configuration files
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/Config.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/ConfigWAMR.cmake)

# by default, build in release
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()


#====================================================================================================================================================
# Specific to compile scripts
find_program(WAT2WASM
  wat2wasm
  PATHS /opt/wabt/bin
  REQUIRED
)

if(NOT WAT2WASM)
  message(SEND_ERROR "can not find wat2wasm")
endif()

if(${WAMR_BUILD_AOT} EQUAL 1)
  ## locate wamrc
  find_program(WAMRC
    wamrc
    PATHS ${WAMR_ROOT_DIR}/wamr-compiler/build/
  )

  if(NOT WAMRC)
    message(SEND_ERROR "can not find wamrc.  refer to \
        https://github.com/bytecodealliance/wasm-micro-runtime#build-wamrc-aot-compiler"
    )
  endif()
endif()


#====================================================================================================================================================
# add WAMR directory


#====================================================================================================================================================
# creates the executable
