SetDatablockOptimize on
SetDateSave on
CRCCheck on

AutoCloseWindow false
ShowInstDetails show

Name " "

UninstallExeName uninst-nwcstrainingfix.exe
UninstallText "This will uninstall NextWish's Counter-Strike Training Fix v1.0 from your computer. Hit Next to uninstall, or Cancel to cancel."

OutFile nwcstrainingfix-1.0.exe
Caption "NextWish.org - Counter-Strike Training Fix"

LicenseData "Training Fix.txt"
ComponentText "This will install NextWish's Counter-Strike Training Fix v1.0 on your computer."
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKLM Software\NextWish.org Half-Life

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\cstrike
File /R masters\*

SetOutPath $INSTDIR\cstrike\NextWish
File "Training Fix.txt"

WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR


CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\Counter-Strike Training Fix"

  CreateShortCut "$SMPROGRAMS\NextWish.org\Counter-Strike Training Fix\Read Me.lnk" \
                 "$INSTDIR\cstrike\NextWish\script~1.txt"
  CreateShortCut "$SMPROGRAMS\NextWish.org\Counter-Strike Training Fix\Uninstall.lnk" \
                 "$INSTDIR\uninst-nwcstrainingfix.exe"
                 
MessageBox MB_YESNO|MB_ICONQUESTION "Setup has completed. View readme file now?" IDNO NoReadme
	ExecShell open '"$INSTDIR\cstrike\NextWish\Training Fix.txt"'
NoReadme:
BringToFront
SectionEnd

Section Uninstall
RMDir /r "$SMPROGRAMS\NextWish.org\Counter-Strike Training Fix"

RMDIR /r "$INSTDIR\cstrike\sound\training"

Delete "$INSTDIR\cstrike\maps\tr_*.bsp"
Delete "$INSTDIR\cstrike\NextWish\Training Fix.txt"

Delete $INSTDIR\uninst-nwcstrainingfix.exe

SectionEnd