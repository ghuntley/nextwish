OutFile nwcsmapfix-11.1.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Map Fix Readme.txt"
ComponentText "This will install NextWish's CStrike Map Fix v11.1 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Counter-Strike Directory. Please do *not* select your Counter-Strike\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\NextWish.org Half-Life

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike\maps
File maps\*.bsp
File maps\*.txt


SetOutPath $INSTDIR\cstrike
File wads\*.wad


SetOutPath $INSTDIR\cstrike\NextWish
File "Map Fix Readme.txt"


WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike Map Fix"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Map Fix\Read Me.lnk" "$INSTDIR\cstrike\NextWish\mapfix~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Map Fix\Uninstall.lnk" "$INSTDIR\uninst-nwcsmapfix.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\cstrike\NextWish\mapfix~1.txt"'
Sleep 500
BringToFront


Section Uninstall

UninstallText "This will uninstall NextWish's CStrike Map Fix v11.1 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcsmapfix.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike Map Fix\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike Map Fix\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike Map Fix"

Delete "$INSTDIR\cstrike\NextWish\mapfix~1.txt"

Delete "$INSTDIR\cstrike\Maps\as_tundra.*"
Delete "$INSTDIR\cstrike\Maps\cs_estate.*"
Delete "$INSTDIR\cstrike\Maps\cs_thunder.*"
Delete "$INSTDIR\cstrike\Maps\de_dust2.*"
Delete "$INSTDIR\cstrike\Maps\de_inferno.*"
Delete "$INSTDIR\cstrike\Maps\de_nuke.*"
Delete "$INSTDIR\cstrike\Maps\de_rotterdam.*"
Delete "$INSTDIR\cstrike\Maps\de_train.*"
Delete "$INSTDIR\cstrike\Maps\de_vegas.*"
Delete "$INSTDIR\cstrike\Maps\de_vertigo.*"
Delete "$INSTDIR\cstrike\as_tundra.wad"
Delete "$INSTDIR\cstrike\cs_thunder.wad"
Delete "$INSTDIR\cstrike\jos.wad"
Delete "$INSTDIR\cstrike\n0th1ng.wad"



Delete $INSTDIR\uninst-nwcsmapfix.exe