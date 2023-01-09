// DLL_TEST_ENVIRONMENT.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <windows.h>
#include <filesystem>
#include <string>
#include <fstream>
#include <iostream>

STARTUPINFOA startup_info;
PROCESS_INFORMATION process_info;
bool started = false;

int main()
{
    memset(&startup_info, 0, sizeof(STARTUPINFOA));
    startup_info.cb = sizeof(STARTUPINFOA);
    memset(&process_info, 0, sizeof(PROCESS_INFORMATION));

    // TODO: IMPLEMENT PORT BUSY CHECK
    int port_num = 10000;
    std::string name = R"(..\..\..\..\battle_sim_srv.exe)";
    std::string command = name + " " + std::to_string(port_num);
    LPSTR lp_name = const_cast<char*>(name.c_str());
    LPSTR lp_command = const_cast<char*>(command.c_str());
    bool result = CreateProcessA(
        lp_name,
        lp_command,
        NULL,
        NULL,
        false,
        0,
        NULL,
        NULL,
        &startup_info,
        &process_info
    );
    WaitForSingleObject(process_info.hProcess, INFINITE);
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
