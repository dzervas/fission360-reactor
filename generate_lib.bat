@echo off
set dll_path=%1
set lib=%2

echo LIBRARY %lib% > %lib%.def
echo EXPORTS >> %lib%.def
for /f "skip=19 tokens=4" %%A in ('"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.38.33130\bin\Hostx64\x64\dumpbin.exe" /exports %dll_path%\%lib%.dll') do echo %%A >> %lib%.def
"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.38.33130\bin\Hostx64\x64\lib.exe" /def:%lib%.def /out:%lib%.lib /machine:x64
