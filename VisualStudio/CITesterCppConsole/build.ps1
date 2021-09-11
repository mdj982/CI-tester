$ENV:Path="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\;"+$ENV:Path

MSBuild .\CITesterCppConsole.sln -t:CITesterCppConsole -p:Configuration=Debug -p:Platform=x64
MSBuild .\CITesterCppConsole.sln -t:CITesterCppConsole -p:Configuration=Release -p:Platform=x64
MSBuild .\CITesterCppConsole.sln -t:CITesterCppConsoleTest -p:Configuration=Debug -p:Platform=x64
MSBuild .\CITesterCppConsole.sln -t:CITesterCppConsoleTest -p:Configuration=Release -p:Platform=x64
