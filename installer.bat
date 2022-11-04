@echo off
:menu
echo Welcome %USERNAME%
echo ---CatCord--------------------
echo ^| [1] ^| Stable               ^|
echo ^| [2] ^| PTB/Public Test Beta ^|
echo ^| [3] ^| Canary               ^|
echo ^| [4] ^| Development          ^|
echo ^| [5] ^| Update CatCord       ^|
echo ^| [6] ^| Open CatCord Folder  ^|
echo ------------------------------
choice /n /c:123456 /M "Choose an option (1-6) "
GOTO LABEL-%ERRORLEVEL%

:LABEL-1 STABLE

echo switching to roaming appdata folder
cd %APPDATA%
echo downloading CatCord
git clone https://github.com/catcord-org/catcord
echo switching to CatCord folder
cd catcord
echo injecting CatCord into Discord
npm run inject stable
goto FINISH

:LABEL-2 PTB

echo switching to roaming appdata folder
cd %APPDATA%
echo downloading CatCord
git clone https://github.com/catcord-org/catcord
echo switching to CatCord folder
cd catcord
echo injecting CatCord into Discord PTB
npm run inject ptb
goto FINISH

:LABEL-3 CANARY

echo switching to roaming appdata folder
cd %APPDATA%
echo downloading CatCord
git clone https://github.com/catcord-org/catcord
echo switching to CatCord folder
cd catcord
echo injecting CatCord into Discord Canary
npm run inject canary
goto FINISH

:LABEL-4 DEVELOPMENT

echo switching to roaming appdata folder
cd %APPDATA%
echo downloading CatCord
git clone https://github.com/catcord-org/catcord
echo switching to CatCord folder
cd catcord
echo injecting CatCord into Discord Development
npm run inject dev
goto FINISH

:LABEL-5
echo switching to CatCord folder
cd %APPDATA%\catcord
echo git pulling
git pull
goto FINISH

:LABEL-6
echo opening CatCord folder
start %APPDATA%\catcord
goto FINISH

:FINISH
start %APPDATA%\catcord
echo Done. (=^^ I ^^=)

PAUSE
