Name "NextWish.org"
SetDatablockOptimize on
SetDateSave on
OutFile nwhllargefont-1.0.exe
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "HL Large Font Readme.txt"
ComponentText "This will install the NextWish.org HL Large Font v1.0 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to the folder of the mod you want to install the HL Large Font v1.0 for:"

InstallDir ""

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\
File fonts.wad

SetOutPath $INSTDIR\NextWish
File "HL Large Font Readme.txt"


CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\HL Large Font"
CreateShortCut "$STARTMENU\Programs\NextWish.org\HL Large Font\Read Me.lnk" "$INSTDIR\NextWish\HL Large Font Readme.txt" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\HL Large Font\Uninstall.lnk" "$INSTDIR\uninst-nwhllargefont.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\NextWish\HL Large Font Readme.txt"'

SectionEnd


Section Uninstall

UninstallText "This will uninstall NextWish's HL Large Font v1.0 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwhllargefont.exe

Delete "$INSTDIR\NextWish\HL Large Font Readme.txt"
Delete "$INSTDIR\fonts.wad"
RMDir /R "$STARTMENU\Programs\NextWish.org\HL Large Font"
Delete $INSTDIR\uninst-nwhllargefont.exe

SectionEnd
