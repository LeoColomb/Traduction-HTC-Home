@echo off
if /%1/==// goto null
if not exist Home.Packaging.Resources.%1.resx goto notfound
echo HTC Home 3 Translators Toolkit v1.0
echo --Making %1 folder
md %1
echo --Generating resources file
resgen Home.Packaging.Resources.%1.resx %1\Home.Packaging.Resources.%1.resources
echo --Compiling resources
al /out:%1\Home.Packaging.resources.dll /culture:%1 /embed:%1\Home.Packaging.resources.%1.resources,Home.Packaging.Properties.%1.resources
echo --Removing temporary files
del %1\Home.Packaging.Resources.%1.resources
echo --Done.
goto end
:notfound
echo File Home.Packaging.Resources.%1.resx not found!
goto end
:null
echo Usage build_pm.bat "culture"
echo Example build_pm.bat fr-FR
:end