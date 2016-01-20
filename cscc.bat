
REM Set environment variables
REM "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"

REM Compile CI-Test-Library
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:library /out:"CI-Test-Library.dll" "%WORKSPACE%\CI-Test-Library\Class1.cs"

REM Compile CI-Test
REM "C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:exe /out:"C:\git\Built\bin\Release\CI-Test.exe" /lib:"C:\git\Built\bin\Release\" /reference:"CI-Test-Library.dll" "%WORKSPACE%\CI-Test\*.cs"