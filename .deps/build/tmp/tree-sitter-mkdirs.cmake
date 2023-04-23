# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ren-ty/Documents/neovim-source/.deps/build/src/tree-sitter"
  "/Users/ren-ty/Documents/neovim-source/.deps/build/src/tree-sitter-build"
  "/Users/ren-ty/Documents/neovim-source/.deps/usr"
  "/Users/ren-ty/Documents/neovim-source/.deps/build/tmp"
  "/Users/ren-ty/Documents/neovim-source/.deps/build/src/tree-sitter-stamp"
  "/Users/ren-ty/Documents/neovim-source/.deps/build/downloads/tree-sitter"
  "/Users/ren-ty/Documents/neovim-source/.deps/build/src/tree-sitter-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ren-ty/Documents/neovim-source/.deps/build/src/tree-sitter-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/ren-ty/Documents/neovim-source/.deps/build/src/tree-sitter-stamp${cfgdir}") # cfgdir has leading slash
endif()
