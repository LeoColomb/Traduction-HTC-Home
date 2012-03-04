@echo off
if /%1/==// goto null
if not exist Update.Resources.%1.resx goto notfound
echo HTC Home 3 Translators Toolkit v1.0
echo --Making %1 folder
md %1
echo --Generating resources file
resgen Update.Resources.%1.resx %1\Update.Resources.%1.resources
echo --Compiling resources
al /out:%1\Update.resources.dll /culture:%1 /embed:%1\Update.resources.%1.resources,Update.Properties.%1.resources
echo --Removing temporary files
del %1\Update.Resources.%1.resources
echo --Done.
goto end
:notfound
echo File Update.Resources.%1.resx not found!
goto end
:null
echo Usage build_update.bat "culture"
echo Example build_update.bat fr-FR
:end