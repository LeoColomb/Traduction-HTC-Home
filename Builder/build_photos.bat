@echo off
if /%1/==// goto null
if not exist Photos.Resources.%1.resx goto notfound
echo HTC Home 3 Translators Toolkit v1.0
echo --Making %1 folder
md %1
echo --Generating resources file
resgen Photos.Resources.%1.resx %1\Photos.Resources.%1.resources
echo --Compiling resources
al /out:%1\Photos.resources.dll /culture:%1 /embed:%1\Photos.Resources.%1.resources,Photos.Properties.Resources.%1.resources
echo --Removing temporary files
del %1\Photos.Resources.%1.resources
echo --Done.
goto end
:notfound
echo File Photos.Resources.%1.resx not found!
goto end
:null
echo Usage build_photos.bat "culture"
echo Example build_photos.bat fr-FR
:end