OutFile nwhldmscript-4.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Script Readme.txt"
ComponentText "This will install NextWish's Half-Life Deathmatch Script v4.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\Valve\Half-Life InstallPath

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\valve\gfx\shell
File gfx\shell\kb_act.lst

SetOutPath $INSTDIR\valve\NextWish
File "Script Readme.txt"
File NextWish\nwhldm1.cfg

SetOutPath $INSTDIR\valve
File valve.rc



CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\HL Deathmatch Script"
CreateShortCut "$STARTMENU\Programs\NextWish.org\HL Deathmatch Script\Read Me.lnk" "$INSTDIR\valve\NextWish\script~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\HL Deathmatch Script\Uninstall.lnk" "$INSTDIR\uninst-nwhldmscript.exe" "" "" 0

Exec '"$WINDIR\notepad.exe" "$INSTDIR\valve\NextWish\script~1.txt"'
MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's Half-Life Deathmatch Script v4.0 has been successfully installed." IDOK 0





Section Uninstall

UninstallText "This will uninstall NextWish's Half-Life Deathmatch Script v4.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwhldmscript.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\HL Deathmatch Script\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\HL Deathmatch Script\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\HL Deathmatch Script"

Delete "$INSTDIR\valve\NextWish\script~1.txt"
Delete "$INSTDIR\valve\NextWish\nwhldm1.cfg"
Delete "$INSTDIR\valve\valve.rc"


SetOutPath $INSTDIR\valve\gfx\shell
File "original\kb_act.lst"


Delete $INSTDIR\uninst-nwhldmscript.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's Half-Life Deathmatch Script v4.0 has been successfully uninstalled." IDOK 0