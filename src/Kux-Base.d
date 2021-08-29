extern (C) void runkux(const char* __kux_base);

import std.stdio;

void handlekux()
{
 writeln("------- Kux -------");
 runkux("kux.img");
}

void main()
