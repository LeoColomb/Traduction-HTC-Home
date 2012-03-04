@echo off
if /%1/==// goto null
if not exist Weather.Resources.%1.resx goto notfound
echo HTC Home 3 Translators Toolkit v1.0
echo --Making %1 folder
md %1
echo --Generating resources file
resgen Weather.Resources.%1.resx %1\Weather.Resources.%1.resources
echo --Compiling resources
al /out:%1\Weather.resources.dll /culture:%1 /embed:%1\Weather.Resources.%1.resources,Weather.Properties.Resources.%1.resources
echo --Removing temporary files
del %1\Weather.Resources.%1.resources
echo --Done.
goto end
:notfound
echo File Weather.Resources.%1.resx not found!
goto end
:null
echo Usage build_Weather.bat "culture"
echo Example build_Weather.bat fr-FR
:end