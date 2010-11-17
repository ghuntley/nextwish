SetDatablockOptimize on
SetDateSave on
Name ""
OutFile nwcsnude-4.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Nude Hostages Readme.txt"
ComponentText "This will install NextWish's Nude Counter-Strike Hostages v4.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\NextWish.org Half-Life

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike\gfx\shell
File gfx\shell\kb_act.lst

SetOutPath $INSTDIR\cstrike\NextWish
File "Script Readme.txt"
File NextWish\nwcstrike1.cfg

SetOutPath $INSTDIR\cstrike
File valve.rc



WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\Nude Counter-Strike Hostages"
CreateShortCut "$STARTMENU\Programs\NextWish.org\Nude Counter-Strike Hostages\Read Me.lnk" "$INSTDIR\cstrike\NextWish\script~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\Nude Counter-Strike Hostages\Uninstall.lnk" "$INSTDIR\uninst-nwcstrikescript.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\cstrike\NextWish\script~1.txt"'
Sleep 500
BringToFront


Section Uninstall

UninstallText "This will uninstall NextWish's Nude Counter-Strike Hostages v1.3 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcstrikescript.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\Nude Counter-Strike Hostages\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\Nude Counter-Strike Hostages\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\Nude Counter-Strike Hostages"

Delete "$INSTDIR\cstrike\NextWish\script~1.txt"
Delete "$INSTDIR\cstrike\NextWish\nwcstrike1.cfg"
Delete "$INSTDIR\cstrike\valve.rc"


SetOutPath $INSTDIR\cstrike\gfx\shell
File "original\kb_act.lst"


Delete $INSTDIR\uninst-nwcstrikescript.exe