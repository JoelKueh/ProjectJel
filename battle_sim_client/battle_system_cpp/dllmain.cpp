// dllmain.cpp : Defines the entry point for the DLL application.
#include "pch.h"
#include <filesystem>
#include <string>
#include <fstream>
#include <iostream>

#define func extern "C" __declspec(dllexport)

STARTUPINFOA startup_info;
PROCESS_INFORMATION process_info;
bool started = false;

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

func double Start_Battle_Srv()
{
    if (started)
        return 0;

    memset(&startup_info, 0, sizeof(STARTUPINFOA));
    startup_info.cb = sizeof(STARTUPINFOA);
    memset(&process_info, 0, sizeof(PROCESS_INFORMATION));

    // TODO: IMPLEMENT PORT BUSY CHECK
    int port_num = 10000;
    std::string name = R"(battle_sim_srv\battle_sim_srv.exe)";
    std::string command = name + " " + std::to_string(port_num);
    LPSTR lp_name = const_cast<char*>(name.c_str());
    LPSTR lp_command = const_cast<char*>(command.c_str());
    bool result = CreateProcessA(
        lp_name,
        lp_command,
        NULL,
        NULL,
        false,
        CREATE_NO_WINDOW,
        NULL,
        NULL,
        &startup_info,
        &process_info
    );
    WaitForSingleObject(process_info.hProcess, INFINITE);

    if (result)
        return port_num;
    else
        return -1;
}

func double Close_Battle_Srv()
{
    bool process_closed = CloseHandle(process_info.hProcess);
    bool thread_closed = CloseHandle(process_info.hThread);
    
    if (process_closed && thread_closed)
        return 1;
    else
        return -1;
}