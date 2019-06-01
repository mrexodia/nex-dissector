@echo off
cd c:\CodeBlocks\nex-dissector
set ZBS=c:\ZeroBraneStudioEduPack-1.80-win32
set LUA_PATH=.\?.lua;%ZBS%\lualibs/?/?.lua;%ZBS%\lualibs/?.lua
set LUA_CPATH=%ZBS%\bin/?.dll;%ZBS%\bin/clibs52/?.dll
set WIRESHARK_NOLUA=1
set PCAPNG=d:\WiiU\sharkdump\game_startup4_filter.pcapng
"c:\Program Files (x86)\Wireshark\tshark.exe" -r "%PCAPNG%" -X lua_script:init_tshark.lua -O prudpv0,prudpv1,nex