OutFile nwcssoundpack-10.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Sound Pack Readme.txt"
ComponentText "This will install Mikhail's CStrike Sound Pack v10.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\Valve\Half-Life InstallPath

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike\sound\doors
File sound\doors\*.wav

SetOutPath $INSTDIR\cstrike\sound\player
File sound\player\*.wav

SetOutPath $INSTDIR\cstrike\sound\weapons
File sound\weapons\*.wav

SetOutPath $INSTDIR\cstrike\sound\debris
File sound\debris\*.wav

SetOutPath $INSTDIR\cstrike\NextWish
File "Sound Pack Readme.txt"


SetOutPath $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike Sound Pack"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Sound Pack\Read Me.lnk" "$INSTDIR\cstrike\NextWish\soundp~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Sound Pack\Uninstall.lnk" "$INSTDIR\uninst-nwcssoundpack.exe" "" "" 0

Exec '"$WINDIR\notepad.exe" "$INSTDIR\cstrike\NextWish\soundp~1.txt"'
MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "Mikhail's CStrike Sound Pack v10.0 has been successfully installed." IDOK 0





Section Uninstall

UninstallText "This will uninstall Mikhails's CStrike Sound Pack v10.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcssoundpack.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike Sound Pack\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike Sound Pack\Read Me.lnk"
Delete "$INSTDIR\cstrike\NextWish\soundp~1.txt"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike Sound Pack"


SetOutPath $INSTDIR\cstrike\sound\debris
File original\debris\*.wav

SetOutPath $INSTDIR\cstrike\sound\doors
File original\doors\*.wav

SetOutPath $INSTDIR\cstrike\sound\player
File original\player\*.wav

SetOutPath $INSTDIR\cstrike\sound\weapons
File original\weapons\*.wav

Delete $INSTDIR\uninst-nwcssoundpack.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "Mikhail's CStrike Sound Pack v10.0 has been successfully uninstalled." IDOK 0