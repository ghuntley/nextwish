Name ""
SetDatablockOptimize on
SetDateSave on
OutFile nwflfscript-1.2.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Script Readme.txt"
ComponentText "This will install NextWish's Frontline Force Script v1.2 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\NextWish.org Half-Life

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\frontline\gfx\shell
File gfx\shell\kb_act.lst

SetOutPath $INSTDIR\frontline\NextWish
File "Script Readme.txt"
File NextWish\nwflf1.cfg

SetOutPath $INSTDIR\frontline
File valve.rc



WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\Frontline Force Script"
CreateShortCut "$STARTMENU\Programs\NextWish.org\Frontline Force Script\Read Me.lnk" "$INSTDIR\frontline\NextWish\script~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\Frontline Force Script\Uninstall.lnk" "$INSTDIR\uninst-nwflfscript.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\dod\NextWish\script~1.txt"'
Sleep 500
BringToFront



Section Uninstall

UninstallText "This will uninstall NextWish's Frontline Force Script v1.2 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwflfscript.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\Frontline Force Script\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\Frontline Force Script\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\Frontline Force Script"

Delete "$INSTDIR\frontline\NextWish\script~1.txt"
Delete "$INSTDIR\frontline\NextWish\nwflf1.cfg"
Delete "$INSTDIR\frontline\valve.rc"


SetOutPath $INSTDIR\frontline\gfx\shell
File "original\kb_act.lst"


Delete $INSTDIR\uninst-nwflfscript.exe