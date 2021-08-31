if(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
	# on windows, it is possible to use the JIT
	if(NOT DEFINED WAMR_BUILD_INTERP)
	  set(WAMR_BUILD_INTERP 1)
	endif()

	if(NOT DEFINED WAMR_BUILD_AOT)
	  set(WAMR_BUILD_AOT 0)
	endif()

	if(NOT DEFINED WAMR_BUILD_JIT)
	  set(WAMR_BUILD_JIT 0)
	endif()	
else()
	set(WAMR_BUILD_AOT 0)
endif()

set(WAMR_BUILD_LIBC_WASI 0)