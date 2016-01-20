REM Compile CI-Test-Library
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:library /out:"C:\git\TestArea5\CI-Test\CI-Test-Library\bin\Release\CI-Test-Library.dll" "C:\git\TestArea5\CI-Test\CI-Test-Library\*.cs"

REM Compile CI-Test
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:exe /out:"C:\git\TestArea5\CI-Test\CI-Test\bin\Release\CI-Test.exe" /reference:"C:\git\TestArea5\CI-Test\CI-Test-Library\bin\Release\CI-Test-Library.dll" "C:\git\TestArea5\CI-Test\CI-Test\*.cs"

REM Compile UnitTestProject1
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:library /out:"C:\git\TestArea5\CI-Test\UnitTestProject1\bin\Release\UnitTestProject1.dll" /reference:"C:\git\TestArea5\CI-Test\CI-Test-Library\bin\Release\CI-Test-Library.dll" /reference:"C:\git\TestArea5\CI-Test\References\nunit.framework.dll" "C:\git\TestArea5\CI-Test\UnitTestProject1\*.cs"