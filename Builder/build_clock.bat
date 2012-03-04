@echo off
if /%1/==// goto null
if not exist Clock.Resources.%1.resx goto notfound
echo HTC Home 3 Translators Toolkit v1.0
echo --Making %1 folder
md %1
echo --Generating resources file
resgen Clock.Resources.%1.resx %1\Clock.Resources.%1.resources
echo --Compiling resources
al /out:%1\Clock.resources.dll /culture:%1 /embed:%1\Clock.Resources.%1.resources,Clock.Properties.Resources.%1.resources
echo --Removing temporary files
del %1\Clock.Resources.%1.resources
echo --Done.
goto end
:notfound
echo File Clock.Resources.%1.resx not found!
goto end
:null
echo Usage build_clock.bat "culture"
echo Example build_clock.bat fr-FR
:end