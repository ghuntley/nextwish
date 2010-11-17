Name ""
OutFile nwhldmcsretailfix-11.0.exe
SetDatablockOptimize on
SetDateSave on

CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "HLDM CS Retail Fix Readme.txt"
ComponentText "This will install NextWish's HLDM CStrike Retail Fix v11.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Counter-Strike Directory. Please do *not* select your Counter-Strike\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\NextWish.org Half-Life

Section "Install"
SetOverwrite On


SetOutPath $INSTDIR\valve\maps
File "maps\*.bsp"

SetOutPath $INSTDIR\valve\cl_dlls
File "cl_dlls\client.dll"


SetOutPath $INSTDIR\valve\NextWish
File "HLDM CS Retail Fix Readme.txt"

WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\HLDM CStrike Retail Fix"
CreateShortCut "$STARTMENU\Programs\NextWish.org\HLDM CStrike Retail Fix\Read Me.lnk" "$INSTDIR\valve\NextWish\hldmcs~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\HLDM CStrike Retail Fix\Uninstall.lnk" "$INSTDIR\uninst-nwhldmcsretailfix.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\valve\NextWish\HLDM CS Retail Fix Readme.txt"'
Sleep 500
BringToFront


Section Uninstall

UninstallText "This will uninstall NextWish's HLDM CStrike Retail Fix v11.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwhldmcsretailfix.exe


Section Uninstall
Delete "$INSTDIR\valve\maps\rapidcore.bsp"


SetOutPath $INSTDIR\valve\cl_dlls
File "orig\client.dll"


Delete "$INSTDIR\valve\NextWish\hldmcs~1.txt"
RMDir "$STARTMENU\Programs\NextWish.org\HLDM CStrike Retail Fix"


Delete $INSTDIR\uninst-nwhldmcsretailfix.exe
