OutFile nwcscript-10.2.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Script Readme.txt"
ComponentText "This will install NextWish's CStrike Script v10.2 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\Valve\Half-Life InstallPath

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike\gfx\shell
File gfx\shell\kb_act.lst

SetOutPath $INSTDIR\cstrike\sound\vox
File sound\vox\throwgren.wav

SetOutPath $INSTDIR\cstrike\NextWish
File "Script Readme.txt"
File NextWish\nwcs1.cfg
File NextWish\nwcs2.cfg

SetOutPath $INSTDIR\cstrike
File valve.rc



CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike Script"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Script\Read Me.lnk" "$INSTDIR\cstrike\NextWish\script~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Script\Uninstall.lnk" "$INSTDIR\uninst-nwcscript.exe" "" "" 0

Exec '"$WINDIR\notepad.exe" "$INSTDIR\cstrike\NextWish\script~1.txt"'
MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike Script v10.2 has been successfully installed." IDOK 0





Section Uninstall

UninstallText "This will uninstall NextWishs's CStrike Script v10.2 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcscript.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike Script\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike Script\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike Script"

Delete "$INSTDIR\cstrike\NextWish\script~1.txt"
Delete "$INSTDIR\cstrike\NextWish\nwcs1.cfg"
Delete "$INSTDIR\cstrike\NextWish\nwcs2.cfg"
Delete "$INSTDIR\cstrike\valve.rc"
Delete "$INSTDIR\cstrike\sound\vox\throwgren.wav"


SetOutPath $INSTDIR\cstrike\gfx\shell
File "original\kb_act.lst"


Delete $INSTDIR\uninst-nwcscript.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike Script v10.2 has been successfully uninstalled." IDOK 0