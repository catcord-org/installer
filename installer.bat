@echo off
:menu
echo Welcome %USERNAME%
echo ---CatCord--------------------
echo ^| [1] ^| Stable               ^|
echo ^| [2] ^| PTB/Public Test Beta ^|
echo ^| [3] ^| Canary               ^|
echo ^| [4] ^| Development          ^|
echo ------------------------------
choice /n /c:1234 /M "Choose an option (1-4) "
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

:LABEL-2 PTB

echo switching to roaming appdata folder
cd %APPDATA%
echo downloading CatCord
git clone https://github.com/catcord-org/catcord
echo switching to CatCord folder
cd catcord
echo injecting CatCord into Discord PTB
npm run inject ptb

:LABEL-3 CANARY

echo switching to roaming appdata folder
cd %APPDATA%
echo downloading CatCord
git clone https://github.com/catcord-org/catcord
echo switching to CatCord folder
cd catcord
echo injecting CatCord into Discord Canary
npm run inject canary

:LABEL-4 DEVELOPMENT

echo switching to roaming appdata folder
cd %APPDATA%
echo downloading CatCord
git clone https://github.com/catcord-org/catcord
echo switching to CatCord folder
cd catcord
echo injecting CatCord into Discord Development
npm run inject dev

PAUSE
