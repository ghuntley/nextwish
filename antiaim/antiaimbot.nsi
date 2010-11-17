OutFile nwantiaimbot-1.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Anti Aimbot SprayPaint Readme.txt"
ComponentText "This will install the NextWish.org Anti Aimbot Spraypaint v1.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to the folder of the mod you want to install the Anti Aimbot Spraypaint v1.0 for:"

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

exec '"$WINDIR\notepad.exe" "$INSTDIR\NextWish\antiai~1.txt"'
MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's Anti Aimbot Spraypaint v1.0 has been successfully installed." IDOK 0



Section Uninstall

UninstallText "This will uninstall NextWish's Anti Aimbot Spraypaint v1.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwantiaimbot.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint\Read Me.lnk"
Delete "$INSTDIR\NextWish\antiai~1.txt"
RMDir "$STARTMENU\Programs\NextWish.org\Anti Autoaim Spraypaint"

Delete $INSTDIR\uninst-nwcscrashfix.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's Anti Autoaim Spraypaint v1.0 has been successfully uninstalled." IDOK 0