#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

void initrd(void)
{
 lua_State* L = luaL_newstate();
 luaL_openlibs(L);
 //initrd - current disk image
 //needs to be in same directory
 //usually handled as a "raw" disk image
 luaL_dofile(L, "./initrd.img");
}
