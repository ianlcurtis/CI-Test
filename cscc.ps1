# CI PoC Build script 

# Set environment variables
# "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"

# Compile CI-Test-Library
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:library /out:"%WORKSPACE%\CI-Test-Library\bin\Release\CI-Test-Library.dll" "%WORKSPACE%\CI-Test-Library\*.cs"

# Compile CI-Test
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc" /target:exe /out:"%WORKSPACE%\CI-Test\bin\Release\CI-Test.exe" /reference:"%WORKSPACE%\CI-Test-Library\bin\Release\CI-Test-Library.dll" "%WORKSPACE%\CI-Test\*.cs"