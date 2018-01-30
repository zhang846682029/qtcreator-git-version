del version.h

echo #ifndef VERSION_H >>version.h
echo #define VERSION_H >>version.h
echo. >>version.h
echo. >>version.h

for /f "delims=" %%i in ('git describe --tags --dirty') do (set a=%%i)
echo #define GIT_VERSION "%a%" >>version.h
echo. >>version.h
echo. >>version.h

echo #endif // VERSION_H >>version.h
