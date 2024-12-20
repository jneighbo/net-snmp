@echo off
set MYPERLPROGRAM=c:\usr\bin\traptoemail

perl -v > NUL 2>&1
if ERRORLEVEL 1 goto no_perl
rem Perl found!

if "%OS%"=="Windows_NT" goto winnt
perl "%MYPERLPROGRAM%" %1 %2 %3 %4 %5 %6 %7 %8 %9 %10 %11 %12 %13 %14 %15
goto end

:winnt
perl "%MYPERLPROGRAM%" %*
goto end

:no_perl
echo %MYPERLPROGRAM% requires Perl to run.
echo .
echo Perl source code and instructions for how to build Perl for Windows are
echo available from https://www.cpan.org/src/.
echo .
echo Please install Perl and run this program again.
echo .
pause

:end
