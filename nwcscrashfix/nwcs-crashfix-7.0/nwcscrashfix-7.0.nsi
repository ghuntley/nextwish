OutFile nwcscrashfix-7.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "Crash Fix Readme.txt"
ComponentText "This will install NextWish's CStrike Crash Fix v7.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\Valve\Half-Life InstallPath

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike\models
File hostage01.mdl
CopyFiles $INSTDIR\cstrike\models\hostage01.mdl $INSTDIR\cstrike\models\hostage02.mdl 425
CopyFiles $INSTDIR\cstrike\models\hostage02.mdl $INSTDIR\cstrike\models\hostage03.mdl 425
CopyFiles $INSTDIR\cstrike\models\hostage03.mdl $INSTDIR\cstrike\models\hostage04.mdl 425
CopyFiles $INSTDIR\cstrike\models\hostage04.mdl $INSTDIR\cstrike\models\hostage05.mdl 425
CopyFiles $INSTDIR\cstrike\models\hostage05.mdl $INSTDIR\cstrike\models\hostage06.mdl 425
CopyFiles $INSTDIR\cstrike\models\hostage06.mdl $INSTDIR\cstrike\models\hostage07.mdl 425
CopyFiles $INSTDIR\cstrike\models\hostage07.mdl $INSTDIR\cstrike\models\hostage08.mdl 425
CopyFiles $INSTDIR\cstrike\models\hostage08.mdl $INSTDIR\cstrike\models\hostage09.mdl 425
                                           
CopyFiles $INSTDIR\cstrike\models\hostage09.mdl $INSTDIR\cstrike\models\scientist01.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist01.mdl $INSTDIR\cstrike\models\scientist02.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist02.mdl $INSTDIR\cstrike\models\scientist03.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist03.mdl $INSTDIR\cstrike\models\scientist04.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist04.mdl $INSTDIR\cstrike\models\scientist05.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist05.mdl $INSTDIR\cstrike\models\scientist06.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist06.mdl $INSTDIR\cstrike\models\scientist07.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist07.mdl $INSTDIR\cstrike\models\scientist08.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist08.mdl $INSTDIR\cstrike\models\scientist09.mdl 425   
CopyFiles $INSTDIR\cstrike\models\scientist09.mdl $INSTDIR\cstrike\models\scientist.mdl 425
CopyFiles $INSTDIR\cstrike\models\scientist.mdl $INSTDIR\cstrike\models\scientistt.mdl 425     

SetOutPath $INSTDIR\cstrike\NextWish
File "Crash Fix Readme.txt"


CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\CStrike Crash Fix"
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Crash Fix\Read Me.lnk" "$INSTDIR\cstrike\NextWish\crashf~1.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\CStrike Crash Fix\Uninstall.lnk" "$INSTDIR\uninst-nwcscrashfix.exe" "" "" 0

Exec '"$WINDIR\notepad.exe" "$INSTDIR\cstrike\NextWish\crashf~1.txt"'
MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike Crash Fix v7.0 has been successfully installed." IDOK 0





Section Uninstall

UninstallText "This will uninstall NextWish's CStrike Crash Fix v7.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwcscrashfix.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\CStrike Crash Fix\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\CStrike Crash Fix\Read Me.lnk"
Delete "$INSTDIR\cstrike\NextWish\crashf~1.txt"
RMDir "$STARTMENU\Programs\NextWish.org\CStrike Crash Fix"



SetOutPath $INSTDIR\cstrike\models
File original\*.*

Delete $INSTDIR\uninst-nwcscrashfix.exe

MessageBox MB_OK|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST	 "NextWish's CStrike Crash Fix v7.0 has been successfully uninstalled." IDOK 0