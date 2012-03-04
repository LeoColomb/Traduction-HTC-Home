@echo off
if /%1/==// goto null
if not exist News.Resources.%1.resx goto notfound
echo HTC Home 3 Translators Toolkit v1.0
echo --Making %1 folder
md %1
echo --Generating resources file
resgen News.Resources.%1.resx %1\News.Resources.%1.resources
echo --Compiling resources
al /out:%1\News.resources.dll /culture:%1 /embed:%1\News.Resources.%1.resources,News.Properties.Resources.%1.resources
echo --Removing temporary files
del %1\News.Resources.%1.resources
echo --Done.
goto end
:notfound
echo File News.Resources.%1.resx not found!
goto end
:null
echo Usage build_news.bat "culture"
echo Example build_news.bat fr-FR
:end