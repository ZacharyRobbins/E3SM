string(APPEND FFLAGS " -fimf-use-svml")
if (NOT DEBUG)
  string(APPEND FFLAGS " -qno-opt-dynamic-align")
endif()
string(APPEND SLIBS " -Wl,--as-needed,-L$ENV{NETCDF_DIR}/lib -lnetcdf")
string(APPEND SLIBS " -mkl -lpthread")
