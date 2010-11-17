OutFile nwdodscript-1.1.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Script Readme.txt"
ComponentText "This will install NextWish's Day of Defeat Script v1.1 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\Valve\Half-Life InstallPath

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\dod\gfx\shell
File gfx\shell\kb_act.lst

SetOutPath $INSTDIR\dod\NextWish
File "Script Readme.txt"
File NextWish\nwdod1.cfg

SetOutPath $INSTDIR\dod
File valve.rc



CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\Day of Defeat Script"
CreateShortCut "$STARTMENU\Programs\NextWish.org\Day of Defeat Script\Read Me.lnk" "$INSTDIR\dod\NextWish\script~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\Day of Defeat Script\Uninstall.lnk" "$INSTDIR\uninst-nwdodscript.exe" "" "" 0

Exec '"$WINDIR\notepad.exe" "$INSTDIR\dod\NextWish\script~1.txt"'
MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's Day of Defeat Script v1.1 has been successfully installed." IDOK 0





Section Uninstall

UninstallText "This will uninstall NextWish's Day of Defeat Script v1.1 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwdodscript.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\Day of Defeat Script\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\Day of Defeat Script\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\Day of Defeat Script"

Delete "$INSTDIR\dod\NextWish\script~1.txt"
Delete "$INSTDIR\dod\NextWish\nwdod1.cfg"
Delete "$INSTDIR\dod\valve.rc"


SetOutPath $INSTDIR\dod\gfx\shell
File "original\kb_act.lst"


Delete $INSTDIR\uninst-nwdodscript.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's Day of Defeat Script v1.1 has been successfully uninstalled." IDOK 0