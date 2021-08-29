#include <stdio.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

void runkux(const char* xk)
{
 lua_State* L = luaL_newstate();
 luaL_openlibs(L);
 luaL_dofile(L, xk);
}
