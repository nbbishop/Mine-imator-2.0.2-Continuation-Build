@echo off
rem ---------------------------------------------------------------------------
rem  generate_cpp.bat
rem  Converts the GameMaker code in GmProject into C++ for the Qt build:
rem    GmProject\scripts  -> CppProject\Generated
rem    GmProject\sprites  -> CppProject\Asset\Sprites
rem    GmProject\shaders  -> CppProject\Asset\Shaders
rem
rem  Run it (double-click is fine) every time the GML code changes, BEFORE
rem  building in Visual Studio. If scripts were added or removed, also press
rem  "Configure" + "Generate" in CMake GUI again so new files are picked up.
rem
rem  Needs the .NET SDK (6 or newer): https://dotnet.microsoft.com/download
rem ---------------------------------------------------------------------------
setlocal
set "ROOT=%~dp0.."
set DOTNET_ROLL_FORWARD=Major
set DOTNET_CLI_TELEMETRY_OPTOUT=1

where dotnet >nul 2>nul
if errorlevel 1 (
	echo The .NET SDK is not installed. Get it from https://dotnet.microsoft.com/download
	pause
	exit /b 1
)

echo Converting GameMaker code to C++ ...
dotnet run --project "%ROOT%\CppGen\CppGen\CppGen.csproj" -c Release -- "%ROOT%\GmProject" "%ROOT%\CppProject\Generated" "%ROOT%\CppProject\Asset\Sprites" "%ROOT%\CppProject\Asset\Shaders" "%ROOT%\CppGen\gml.json"
if errorlevel 1 (
	echo.
	echo CppGen reported a problem. Copy the messages above and send them over.
	pause
	exit /b 1
)

echo.
echo Done. Now build in Visual Studio (re-run CMake Configure + Generate first if scripts were added).
pause
