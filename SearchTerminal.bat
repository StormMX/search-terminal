@echo off

title SearchTerminal

rem ******************************************************
rem * Questo file .bat, dati in input un'estensione file *
rem * e un nome contenuto nel titolo del file,           *
rem * restituisce la lista dei file che corrispondono    *
rem * ai filtri di ricerca (completi del path completo). *
rem *                                                    *
rem * Per favore prendere visione dei file .md           *
rem * prima di avviare il batch.                         *
rem *                                                    *
rem * Autore: StormMX                                    *
rem * Versione: 1.0                                      *
rem ******************************************************

echo SearchTerminal
echo.

echo Inizio
echo.

:SEARCH
echo Directory disponibili:
echo [0] C:\
echo [1] %USERPROFILE%\Downloads\
echo [2] %USERPROFILE%\Desktop\
echo [3] Fornisci percorso in cui effettuare la ricerca
echo.

set /p selection=[*] Scegliere un opzione:

set "selectedPath="
if "%selection%"=="0" set "selectedPath=C:\"
if "%selection%"=="1" set "selectedPath=%USERPROFILE%\Downloads\"
if "%selection%"=="2" set "selectedPath=%USERPROFILE%\Desktop\"
if "%selection%"=="3" (
    set /p "selectedPath=Inserisci percorso completo: "
)
echo.

set /p extension=Inserire estensione file da cercare:
set /p title=Inserire titolo o parte del titolo da cercare:
echo.

dir /S /B "%selectedPath%*%title%*.%extension%"
echo.

set /p choice=Vuoi effettuare un'altra ricerca? [S/N]: 
if /I "%choice%"=="S" goto SEARCH
echo.

echo Programma terminato.
echo.

pause
exit /B
