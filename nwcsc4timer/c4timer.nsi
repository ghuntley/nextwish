OutFile nwcsc4timer-1.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "C4 Timer Readme.txt"
ComponentText "This will install the NextWish.org CStrike C4 Timer v1.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\Valve\Half-Life InstallPath

SetOverwrite On

SetOutPath $INSTDIR\cstrike\sound\radio
File "sound\radio\bombpl.wav"

SetOutPath $INSTDIR\cstrike\NextWish
File "C4 Timer Readme.txt"


CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike C4 Timer"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike C4 Timer\Read Me.lnk" "$INSTDIR\cstrike\NextWish\C4 Timer Readme.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike C4 Timer\Uninstall.lnk" "$INSTDIR\uninst-nwcsc4timer.exe" "" "" 0

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike C4 Timer v1.0 has been successfully installed." IDOK 0



Section Uninstall

UninstallText "This will uninstall NextWish's CStrike C4 Timer v1.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcsc4timer.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike C4 Timer\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike C4 Timer\Read Me.lnk"
Delete "$INSTDIR\cstrike\NextWish\C4 Timer Readme.txt"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike C4 Timer"

SetOutPath $INSTDIR\cstrike\sound\radio
File "original\bombpl.wav"


Delete $INSTDIR\uninst-nwcsc4timer.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike C4 Timer v1.0 has been successfully uninstalled." IDOK 0