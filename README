HTC Home Apis Translation Toolkit v1.2
======================================

Translation Toolkit contains some tools for generating localized HTC Home 3 assemblies.

Instructions
------------

1. Replace `en-US` to required culture in `Clock.Resources.en-US.resx`, `Weather.Resources.en-US.resx`, `Home.Packaging.Resources.en-US.resx` and `Update.Resources.en-US.resx` file names. For example: `Clock.Resources.fr-FR.resx`.
2. Use any Resx editor to translate strings in this files. You can use simple, free and open-source [Zeta Resource Editor](http://www.zeta-resource-editor.com).
3. To build `.resx` files to `.dll` librarie, change your culture and execute `Make[…].bat` file:
	. Just change in `culture.txt` file `en-US` in your culture (Example: en-US => fr-FR)
	. Just execute `Make[…].bat` file.
4. Done. Localized assemblies could be found in `<culture name>` folder. You can pack whole folder in 7z archive with `.hhpack` extension (just rename .7z to .hhpack). But if you want to make your translation updateble by HTC Home Updater, you need to do the next step.
5. Go to the `Extras\Locale` folder. You will see `en-US.ext.xml` file. Replace `en-US` to your culture name. Then you should edit it with Notepad:
	1) You need new Cid - Component ID. Cid used by HTC Home Updater to get updates for installed components. To generate new Cid go to http://guidgen.com. When you got new Cid, paste it between `<Cid></Cid>` tags in your xml file.
    2) Change title and developer in xml file.
    3) Replace `en-US` to your culture name in all `<File></File>` tags
    4) Save all changes
When you finish, don't forget to add Extras folder in `.hhpack` archive from step 4.
If you have any troubles with right files and folders placement, look at `en-US.hhpack` which was made for example. Unpack it using 7zip and explore.


Notes
-----

Microsoft Assembly Linker (al.exe) and Microsoft .NET Resource Generator (resgen.exe) are part of Microsoft .NET Framework SDK.
Thanks to Léo Colomb - L.P.C. Cie
Copyright (C) Stealth 2011