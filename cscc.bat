
REM Set environment variables
REM "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"

REM Compile CI-Test-Library
REM "C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:library /out:"%WORKSPACE%\CI-Test-Library\bin\Release\CI-Test-Library.dll" "%WORKSPACE%\CI-Test-Library\*.cs"
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe" "%WORKSPACE%\CI-Test-Library\CI-Test-Library.csproj"
xcopy /y "%WORKSPACE%\CI-Test-Library\bin\Release\CI-Test-Library.dll" "%WORKSPACE%\CI-Test\bin\Release\*"
xcopy /y "%WORKSPACE%\CI-Test-Library\bin\Release\CI-Test-Library.dll" "%WORKSPACE%\UnitTestProject1\bin\Release\*"

REM Compile CI-Test
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:exe /out:"%WORKSPACE%\CI-Test\bin\Release\CI-Test.exe" /reference:"%WORKSPACE%\CI-Test-Library\bin\Release\CI-Test-Library.dll" "%WORKSPACE%\CI-Test\*.cs"

REM Compile UnitTestProject1
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:library /out:"%WORKSPACE%\UnitTestProject1\bin\Release\UnitTestProject1.dll" /reference:"%WORKSPACE%\CI-Test-Library\bin\Release\CI-Test-Library.dll" /reference:"%WORKSPACE%\References\nunit.framework.dll" "%WORKSPACE%\UnitTestProject1\*.cs"
xcopy /y "%WORKSPACE%\References\nunit.framework.dll" "%WORKSPACE%\UnitTestProject1\bin\Release\*"