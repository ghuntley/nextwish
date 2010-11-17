OutFile nwcsinvisfix-1.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Invis Fix Readme.txt"
ComponentText "This will install NextWish's CStrike Invis Fix v1.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\Valve\Half-Life InstallPath

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike\models
File arcticorange.mdl
file arcticorangeT.mdl
CopyFiles $INSTDIR\cstrike\models\arcticorangeT.mdl $INSTDIR\cstrike\models\oranget.mdl 1766
CopyFiles $INSTDIR\cstrike\models\arcticorange.mdl $INSTDIR\cstrike\models\orange.mdl 16

SetOutPath $INSTDIR\cstrike\NextWish
File "Invis Fix Readme.txt"


CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike Invis Fix"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Invis Fix\Read Me.lnk" "$INSTDIR\cstrike\NextWish\invisf~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Invis Fix\Uninstall.lnk" "$INSTDIR\uninst-nwcsinvisfix.exe" "" "" 0

Exec '"$WINDIR\notepad.exe" "$INSTDIR\cstrike\NextWish\invisf~1.txt"'
MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike Invis Fix v1.0 has been successfully installed." IDOK 0



Section Uninstall

UninstallText "This will uninstall NextWish's CStrike Invis Fix v1.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcsinvisfix.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike Invis Fix\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike Invis Fix\Read Me.lnk"
Delete "$INSTDIR\cstrike\NextWish\invisf~1.txt"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike Invis Fix"


SetOutPath $INSTDIR\cstrike\models
File original\*.*

Delete $INSTDIR\uninst-nwcsinvisfix.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike Invis Fix v1.0 has been successfully uninstalled." IDOK 0