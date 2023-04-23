-- LuaRocks configuration

rocks_trees = {
   { name = "user", root = home .. "/.luarocks" };
   { name = "system", root = "/Users/ren-ty/Documents/neovim-source/.deps/usr" };
}
lua_interpreter = "luajit";
variables = {
   LUA_DIR = "/Users/ren-ty/Documents/neovim-source/.deps/usr";
   LUA_INCDIR = "/Users/ren-ty/Documents/neovim-source/.deps/usr/include/luajit-2.1";
   LUA_BINDIR = "/Users/ren-ty/Documents/neovim-source/.deps/usr/bin";
}
