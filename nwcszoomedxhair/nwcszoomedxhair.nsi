SetDatablockOptimize on
SetDateSave on
CRCCheck on

AutoCloseWindow false
ShowInstDetails show

Name " "

UninstallExeName uninst-nwcszoomedxhair.exe
UninstallText "This will uninstall NextWish's Counter-Strike Zoomed Crosshairs v1.0 from your computer. Hit Next to uninstall, or Cancel to cancel."

OutFile nwcszoomedxhair-1.0.exe
Caption "NextWish.org - Counter-Strike Zoomed Crosshairs"

LicenseData "Zoomed Crosshairs.txt"
ComponentText "This will install NextWish's Counter-Strike Zoomed Crosshairs v1.0 on your computer."
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
DirText "Please point this installer to your MAIN Half-Life Directory. Please do *not* select your half-life\cstrike directory."

InstallDir ""
InstallDirRegKey HKLM Software\NextWish.org Half-Life

InstType /NOCUSTOM 
InstType "Blue Crosshair"
InstType "Green Crosshair"
InstType "Red Crosshair"
InstType "Yellow Crosshair"

Section "Please Select From The Following:"
SectionEND

Section "Blue Crosshair"
        SectionIn 1
	SetOverwrite On

	SetOutPath $INSTDIR\cstrike\sprites
	File /R masters\zoom_blue\*
SectionEND

Section "Green Crosshair"
        SectionIn 2
	SetOverwrite On

	SetOutPath $INSTDIR\cstrike\sprites
	File /R masters\zoom_green\*
SectionEND

Section "Red Crosshair"
        SectionIn 3
	SetOverwrite On

	SetOutPath $INSTDIR\cstrike\sprites
	File /R masters\zoom_red\*
SectionEND

Section "Yellow Crosshair"
        SectionIn 4
	SetOverwrite On

	SetOutPath $INSTDIR\cstrike\sprites
	File /R masters\zoom_yellow\*
SectionEND



Section -post
  SetOutPath $INSTDIR\cstrike\NextWish
  File "Zoomed Crosshairs.txt"

  WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Half-Life" $INSTDIR


  CreateDirectory $STARTMENU\Programs\NextWish.org
  CreateDirectory "$STARTMENU\Programs\NextWish.org\Counter-Strike Zoomed Crosshairs"

  CreateShortCut "$SMPROGRAMS\NextWish.org\Counter-Strike Zoomed Crosshairs\Read Me.lnk" \
                 "$INSTDIR\cstrike\NextWish\script~1.txt"
  CreateShortCut "$SMPROGRAMS\NextWish.org\Counter-Strike Zoomed Crosshairs\Uninstall.lnk" \
                 "$INSTDIR\uninst-nwcszoomedxhair.exe"
                 
  MessageBox MB_YESNO|MB_ICONQUESTION "Setup has completed. View readme file now?" IDNO NoReadme
	ExecShell open '"$INSTDIR\cstrike\NextWish\Zoomed Crosshairs.txt"'
  NoReadme:
  BringToFront
SectionEnd

Section Uninstall
RMDir /r "$SMPROGRAMS\NextWish.org\Counter-Strike Zoomed Crosshairs"


	SetOutPath $INSTDIR\cstrike\sprites
	File /R masters\original\*

Delete $INSTDIR\uninst-nwcszoomedxhair.exe

SectionEnd