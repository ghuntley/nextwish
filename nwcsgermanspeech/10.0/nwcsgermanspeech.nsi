OutFile nwcsgermanspeech-10.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "German Speech Translation.txt"
ComponentText "This will install NextWish's CStrike German Speech Translation v10.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\NextWish.org Half-Life

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike\sound\hostage
File hostage\*.wav


SetOutPath $INSTDIR\cstrike\sound\radio
File radio\*.wav


SetOutPath $INSTDIR\cstrike\NextWish
File "German Speech Translation.txt"


WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike German Speech Translation"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike German Speech Translation\Read Me.lnk" "$INSTDIR\cstrike\NextWish\german~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike German Speech Translation\Uninstall.lnk" "$INSTDIR\uninst-nwcsgermanspeech.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\cstrike\NextWish\german~1.txt"'
Sleep 500
BringToFront


Section Uninstall

UninstallText "This will uninstall NextWish's CStrike German Speech Translation v10.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcsgermanspeech.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike German Speech Translation\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike German Speech Translation\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike German Speech Translation"

Delete "$INSTDIR\cstrike\NextWish\german~1.txt"

SetOutPath $INSTDIR\cstrike\sound\hostage
File original\hostage\*.wav


SetOutPath $INSTDIR\cstrike\sound\radio
File original\radio\*.wav


Delete $INSTDIR\uninst-nwcsgermanspeech.exe