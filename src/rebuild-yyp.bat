@ECHO OFF
for %%I in (.) do set projname=%%~nxI
set pw=%cd%
set projyyp="%pw%\\%projname%-rebuilt.yyp"
>%projyyp% echo { "resources": [
for %%d in (
    animcurves
    extensions
    fonts
    paths
    notes
    objects
    rooms
    scripts
    shaders
    sounds
    sprites
    tilesets) do (
        cd "%pw%"
        if exist %%d (
            cd "%pw%/%%d"
            for /f %%i in ('dir /b') do (
                if exist %%i (
                    >>%projyyp% echo {"id":{"name":"%%i","path":"%%d/%%i/%%i.yy",},"order":0,},
                )
            )
        )
)
>>%projyyp% echo ],
>>%projyyp% echo "Options": [
>>%projyyp% echo {"name":"Amazon Fire","path":"options/amazonfire/options_amazonfire.yy",},
>>%projyyp% echo {"name":"Android","path":"options/android/options_android.yy",},
>>%projyyp% echo {"name":"HTML5","path":"options/html5/options_html5.yy",},
>>%projyyp% echo {"name":"iOS","path":"options/ios/options_ios.yy",},
>>%projyyp% echo {"name":"Linux","path":"options/linux/options_linux.yy",},
>>%projyyp% echo {"name":"macOS","path":"options/mac/options_mac.yy",},
>>%projyyp% echo {"name":"Main","path":"options/main/options_main.yy",},
>>%projyyp% echo {"name":"PlayStation 4","path":"options/ps4/options_ps4.yy",},
>>%projyyp% echo {"name":"Switch","path":"options/switch/options_switch.yy",},
>>%projyyp% echo {"name":"tvOS","path":"options/tvos/options_tvos.yy",},
>>%projyyp% echo {"name":"Windows","path":"options/windows/options_windows.yy",},
>>%projyyp% echo {"name":"Windows UWP","path":"options/windowsuap/options_windowsuap.yy",},
>>%projyyp% echo {"name":"Xbox One","path":"options/xboxone/options_xboxone.yy",},
>>%projyyp% echo ],
>>%projyyp% echo "isDnDProject": false,
>>%projyyp% echo "isEcma": false,
>>%projyyp% echo "tutorialPath": "",
>>%projyyp% echo "configs": {
>>%projyyp% echo "name": "Default",
>>%projyyp% echo "children": [],
>>%projyyp% echo },
>>%projyyp% echo "RoomOrderNodes": [

cd "%pw%/rooms"
for /f %%i in ('dir /b') do (
    >>%projyyp% echo {"roomId":{"name":"%%i","path":"rooms/%%i/%%i.yy",},},
)

>>%projyyp% echo ],
>>%projyyp% echo "Folders": [],
>>%projyyp% echo "AudioGroups": [
>>%projyyp% echo {"targets":461609314234257646,"resourceVersion":"1.0","name":"audiogroup_default","resourceType":"GMAudioGroup",},
>>%projyyp% echo ],
>>%projyyp% echo "TextureGroups": [
>>%projyyp% echo {"isScaled":true,"autocrop":true,"border":2,"mipsToGenerate":0,"targets":461609314234257646,"resourceVersion":"1.0","name":"Default","resourceType":"GMTextureGroup",},
>>%projyyp% echo ],
>>%projyyp% echo "IncludedFiles": [],
>>%projyyp% echo "MetaData": {},
>>%projyyp% echo "resourceVersion": "1.4",
>>%projyyp% echo "name": "%projname%",
>>%projyyp% echo "tags": [],
>>%projyyp% echo "resourceType": "GMProject",
>>%projyyp% echo }

cd "%pw%"