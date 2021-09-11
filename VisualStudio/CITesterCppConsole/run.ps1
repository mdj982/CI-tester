echo "run debug-built app..."
.\x64\Debug\CITesterCppConsole.exe

echo "run release-built app..."
.\x64\Release\CITesterCppConsole.exe

$ENV:Path="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\Extensions\TestPlatform;"+$ENV:Path

echo "run debug-built test..."
VSTest.Console /Platform:x64 .\x64\Debug\CITesterCppConsoleTest.dll

echo "run release-built test..."
VSTest.Console /Platform:x64 .\x64\Release\CITesterCppConsoleTest.dll
