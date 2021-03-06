###############################################################################
# Find Fotonic FZAPI
#
# This sets the following variables:
# FZAPI_FOUND - True if FZAPI was found.
# FZAPI_INCLUDE_DIRS - Directories containing the FZAPI include files.
# FZAPI_LIBRARIES - Libraries needed to use FZAPI.
 
#MESSAGE("Searching for Fotonic in: ${FZ_API_DIR}")

if(FZ_API_DIR)
  # Find include dirs
  #MESSAGE("Searching Fotonic includes: ${FZ_API_DIR}")
  find_path(FZAPI_INCLUDE_DIR fz_api.h
    PATHS "${FZ_API_DIR}" NO_DEFAULT_PATH
    DOC "Fotonic include directories")
	
  # Find libraries
  #MESSAGE("Searching Fotonic libs: ${FZ_API_DIR}/Release")
  find_library(FZAPI_LIBS fotonic_fz_api
    HINTS "${FZ_API_DIR}/Release" NO_DEFAULT_PATH
    DOC "Fotonic libraries")	
endif()

#MESSAGE("FZAPI_INCLUDE_DIR: ${FZAPI_INCLUDE_DIR}")
#MESSAGE("FZAPI_LIBS: ${FZAPI_LIBS}")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(FZAPI DEFAULT_MSG
                                  FZAPI_LIBS FZAPI_INCLUDE_DIR)
								  