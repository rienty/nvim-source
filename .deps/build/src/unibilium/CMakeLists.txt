cmake_minimum_required(VERSION 3.10)
project(unibilium LANGUAGES C)

file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.c)
add_library(unibilium ${SRC_FILES})
set_target_properties(unibilium PROPERTIES PUBLIC_HEADER ${PROJECT_SOURCE_DIR}/unibilium.h
  VERSION "${VERSION_MAJOR}.${VERSION_MINOR}")

if(NOT WIN32)
  execute_process(COMMAND sh -c "ncursesw6-config --terminfo-dirs 2>/dev/null || \
      ncurses6-config  --terminfo-dirs 2>/dev/null || \
      ncursesw5-config --terminfo-dirs 2>/dev/null || \
      ncurses5-config  --terminfo-dirs 2>/dev/null || \
      echo '/etc/terminfo:/lib/terminfo:/usr/share/terminfo:/usr/lib/terminfo:/usr/local/share/terminfo:/usr/local/lib/terminfo'"
    OUTPUT_VARIABLE TERMINFO_DIRS)
  # Remove trailing newline
  string(STRIP "${TERMINFO_DIRS}" TERMINFO_DIRS)
else()
  set(TERMINFO_DIRS "")
endif()
target_compile_definitions(unibilium PUBLIC "TERMINFO_DIRS=\"${TERMINFO_DIRS}\"")

include(GNUInstallDirs)
install(TARGETS unibilium
  PUBLIC_HEADER
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
