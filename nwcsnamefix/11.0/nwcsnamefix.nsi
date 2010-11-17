Name ""
OutFile nwcsnamefix-11.0.exe
SetDatablockOptimize on
SetDateSave on

CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "WEAPON~1.TXT"
ComponentText "This will install NextWish's CStrike Weapon Name Fix v11.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Counter-Strike Directory. Please do *not* select your Counter-Strike\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\NextWish.org Half-Life

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike
File titles.txt

SetOutPath $INSTDIR\cstrike\NextWish
File "Weapon Name Fix Readme.txt"


WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike Weapon Name Fix"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Weapon Name Fix\Read Me.lnk" "$INSTDIR\cstrike\NextWish\weapon~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Weapon Name Fix\Uninstall.lnk" "$INSTDIR\uninst-nwcsweaponnamefix.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\cstrike\NextWish\weapon~1.txt"'
Sleep 500
BringToFront


Section Uninstall

UninstallText "This will uninstall NextWish's CStrike Weapon Name Fix v11.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcsweaponnamefix.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike Weapon Name Fix\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike Weapon Name Fix\Read Me.lnk"
Delete "$INSTDIR\cstrike\NextWish\weapon~1.txt"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike Weapon Name Fix"



SetOutPath $INSTDIR\cstrike
File original\*.*

Delete $INSTDIR\uninst-nwcsweaponnamefix.exe
