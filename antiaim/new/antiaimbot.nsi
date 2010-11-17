OutFile nwantiaimbot-2.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Anti Aimbot SprayPaint Readme.txt"
ComponentText "This will install the NextWish.org Anti Aimbot Spraypaint v2.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to the folder of the mod you want to install the Anti Aimbot Spraypaint v2.0 for:"

InstallDir ""

SetOverwrite On

SetOutPath $INSTDIR\
File pldecal.wad

SetOutPath $INSTDIR\NextWish
File "Anti Aimbot SprayPaint Readme.txt"


CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint"
CreateShortCut "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint\Read Me.lnk" "$INSTDIR\NextWish\antiai~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint\Uninstall.lnk" "$INSTDIR\uninst-nwantiaimbot.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\NextWish\antiai~1.txt"'
Sleep 500
BringToFront

Section Uninstall

UninstallText "This will uninstall NextWish's Anti Aimbot Spraypaint v2.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwantiaimbot.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint\Read Me.lnk"
Delete "$INSTDIR\NextWish\antiai~1.txt"
RMDir "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint"

Delete $INSTDIR\uninst-nwcscrashfix.exe

