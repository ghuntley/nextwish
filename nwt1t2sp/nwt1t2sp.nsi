Name ""
OutFile nwt1t2soundpack-1.1.exe
SetDatablockOptimize on
SetDateSave on
CRCCheck on
LicenseText "Please read the following readme before the installing this modification, it could save you alot of time in the long run!"
LicenseData "TRIBES~1.TXT"
ComponentText "This will install NextWish's Tribes 2 Soundpack For Tribes 1 v1.1 on your computer."

AutoCloseWindow false
ShowInstDetails show

DirText "Please point this installer to your MAIN Tribes Directory."

InstallDir ""
InstallDirRegKey HKEY_LOCAL_MACHINE Software\NextWish.org Tribes1

Section "Install"
SetOverwrite On

SetOutPath $INSTDIR\base
File wav\*.wav

SetOutPath $INSTDIR\NextWish
File "TRIBES~1.TXT"



WriteRegStr HKEY_LOCAL_MACHINE SOFTWARE\NextWish.org "Tribes1" $INSTDIR
CreateDirectory $STARTMENU\Programs\NextWish.org
CreateDirectory "$STARTMENU\Programs\NextWish.org\Tribes 2 Soundpack For Tribes 1"
CreateShortCut "$STARTMENU\Programs\NextWish.org\Tribes 2 Soundpack For Tribes 1\Read Me.lnk" "$INSTDIR\NextWish\TRIBES~1.TXT" "" "" 0
CreateShortCut "$STARTMENU\Programs\NextWish.org\Tribes 2 Soundpack For Tribes 1\Uninstall.lnk" "$INSTDIR\uninst-nwt1t2soundpack.exe" "" "" 0

MessageBox MB_YESNO|MB_ICONINFORMATION|MB_RIGHT|MB_TOPMOST "View readme file?" IDNO 1
ExecShell open '"$INSTDIR\NextWish\TRIBES~1.TXT"'
Sleep 500
BringToFront


Section Uninstall

UninstallText "This will uninstall NextWish's Tribes 2 Soundpack For Tribes 1 v1.1 from your computer. Hit Next to uninstall, or Cancel to cancel."
UninstallExeName uninst-nwt1t2soundpack.exe


Section Uninstall
Delete "$STARTMENU\Programs\NextWish.org\Tribes 2 Soundpack For Tribes 1\Uninstall.lnk"
Delete "$STARTMENU\Programs\NextWish.org\Tribes 2 Soundpack For Tribes 1\Read Me.lnk"
RMDir "$STARTMENU\Programs\NextWish.org\Tribes 2 Soundpack For Tribes 1"

Delete "$INSTDIR\NextWish\Tribes~1.txt"

Delete "$INSTDIR\base\activatetele.wav"
Delete "$INSTDIR\base\ammo_activate.wav"
Delete "$INSTDIR\base\ammo_power.wav"
Delete "$INSTDIR\base\ammo_use.wav"
Delete "$INSTDIR\base\button1.wav"
Delete "$INSTDIR\base\button2.wav"
Delete "$INSTDIR\base\bxplo2.wav"
Delete "$INSTDIR\base\bxplo3.wav"
Delete "$INSTDIR\base\command_use.wav"
Delete "$INSTDIR\base\command_activate.wav"
Delete "$INSTDIR\base\crash.wav"
Delete "$INSTDIR\base\debris_large.wav"
Delete "$INSTDIR\base\debris_medium.wav"
Delete "$INSTDIR\base\debris_small.wav"
Delete "$INSTDIR\base\discloop.wav"
Delete "$INSTDIR\base\discreload.wav"
Delete "$INSTDIR\base\dryfire1.wav"
Delete "$INSTDIR\base\elf_fire.wav"
Delete "$INSTDIR\base\energyexp.wav"
Delete "$INSTDIR\base\engineintxw.wav"
Delete "$INSTDIR\base\explo3.wav"
Delete "$INSTDIR\base\explo4.wav"
Delete "$INSTDIR\base\flag1.wav"
Delete "$INSTDIR\base\flagcapture.wav"
Delete "$INSTDIR\base\flagreturn.wav"
Delete "$INSTDIR\base\flierrocket.wav"
Delete "$INSTDIR\base\flyer_fly.wav"
Delete "$INSTDIR\base\flyer_idle.wav"
Delete "$INSTDIR\base\flyer_mount.wav"
Delete "$INSTDIR\base\flyer_dismount.wav"
Delete "$INSTDIR\base\forceclose.wav"
Delete "$INSTDIR\base\forceopen.wav"
Delete "$INSTDIR\base\generator.wav"
Delete "$INSTDIR\base\grenade.wav"
Delete "$INSTDIR\base\hfootlhard.wav"
Delete "$INSTDIR\base\hfootlsnow.wav"
Delete "$INSTDIR\base\hfootlsoft.wav"
Delete "$INSTDIR\base\hfootrhard.wav"
Delete "$INSTDIR\base\hfootrsnow.wav"
Delete "$INSTDIR\base\hfootrsoft.wav"
Delete "$INSTDIR\base\inv_activate.wav"
Delete "$INSTDIR\base\inv_power.wav"
Delete "$INSTDIR\base\inv_use.wav"
Delete "$INSTDIR\base\jammer_on.wav"
Delete "$INSTDIR\base\laserhit.wav"
Delete "$INSTDIR\base\leftmissionarea.wav"
Delete "$INSTDIR\base\lfootlhard.wav"
Delete "$INSTDIR\base\lfootlsnow.wav"
Delete "$INSTDIR\base\lfootlsoft.wav"
Delete "$INSTDIR\base\lfootrhard.wav"
Delete "$INSTDIR\base\lfootrsnow.wav"
Delete "$INSTDIR\base\lfootrsoft.wav"
Delete "$INSTDIR\base\losttower.wav"
Delete "$INSTDIR\base\machgun2.wav"
Delete "$INSTDIR\base\machgun3.wav"
Delete "$INSTDIR\base\machinegun.wav"
Delete "$INSTDIR\base\mfootlhard.wav"
Delete "$INSTDIR\base\mfootlsnow.wav"
Delete "$INSTDIR\base\mfootlsoft.wav"
Delete "$INSTDIR\base\mfootrhard.wav"
Delete "$INSTDIR\base\mfootrsnow.wav"
Delete "$INSTDIR\base\mfootrsoft.wav"
Delete "$INSTDIR\base\mortar_fire.wav"
Delete "$INSTDIR\base\mortar_idle.wav"
Delete "$INSTDIR\base\mortar_reload.wav"
Delete "$INSTDIR\base\motion_activate.wav"
Delete "$INSTDIR\base\pku_ammo.wav"
Delete "$INSTDIR\base\pku_hlth.wav"
Delete "$INSTDIR\base\pku_weap.wav"
Delete "$INSTDIR\base\plasma2.wav"
Delete "$INSTDIR\base\player_death.wav"
Delete "$INSTDIR\base\pulse_power.wav"
Delete "$INSTDIR\base\rain.wav"
Delete "$INSTDIR\base\repair.wav"
Delete "$INSTDIR\base\ricoche1.wav"
Delete "$INSTDIR\base\ricoche2.wav"
Delete "$INSTDIR\base\ricoche3.wav"
Delete "$INSTDIR\base\rifle1.wav"
Delete "$INSTDIR\base\rocket2.wav"
Delete "$INSTDIR\base\rockexp.wav"
Delete "$INSTDIR\base\seek_fire.wav"
Delete "$INSTDIR\base\shield_on.wav"
Delete "$INSTDIR\base\shieldhit.wav"
Delete "$INSTDIR\base\shockexp.wav"
Delete "$INSTDIR\base\sniper.wav"
Delete "$INSTDIR\base\tgt_laser.wav"
Delete "$INSTDIR\base\turretexp.wav"
Delete "$INSTDIR\base\turretfire1.wav"
Delete "$INSTDIR\base\turretfire2.wav"
Delete "$INSTDIR\base\turretfire4.wav"
Delete "$INSTDIR\base\turretoff1.wav"
Delete "$INSTDIR\base\turretoff4.wav"
Delete "$INSTDIR\base\turreton1.wav"
Delete "$INSTDIR\base\turreton4.wav"
Delete "$INSTDIR\base\turretturn1.wav"
Delete "$INSTDIR\base\turretturn2.wav"
Delete "$INSTDIR\base\turretturn4.wav"
Delete "$INSTDIR\base\turreton2.wav"



Delete $INSTDIR\uninst-nwt1t2soundpack.exe