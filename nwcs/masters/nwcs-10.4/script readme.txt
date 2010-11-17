Counter-Strike Script v10.4
Copyright (C) 1999-2001 NextWish.org


PLEASE READ THIS DOCUMENTATION IT CONTAINS IMPORTANT INFORMATION YOU SHOULD KNOW LIKE INSTALLATION INSTRUCTIONS!   

About this modification:
Scripts in Counter-Strike if used and set-up correctly can give you that vital edge over your opponents. Image this scenario - the opposite team has just won the previous round and have their guns, all they need is one possible two clips and there off. You on the other hand have to buy a weapon, ammo, vest, possibly grenades and a deffuser. This takes a considerable amount of time if you do it manually, but not if you have a well configured script. This is where NextWish's Counter-Strike script comes in. All your settings are easily customisable and contrary to many other scripts out there, this script can be easily configured from your keyboard controls menu in Counter-Strike. This eliminates the need for nasty console binding and notepad editing!

Features:
1) Easy to setup! - Everything bindable using the ingame half-life controls menu! ( This script was the first to offer this!) 
2) Buying of weapons/items simplified down to just pressing one button per weapon/items. 
3) Features aliases for choosing to get the tmp or mac10, the sg552 or aug, and the m4a1 or ak47 all depending which team you're on! 
4) Each time you buy a weapon, by default, your pistol is stored in lastinv! Only a key away! 
5) Using radio simplied down to just pressing one button per radio command 
6) A Quick Knife Slash, which pulls out your knife and starts slashing whilst you hold down the button assigned to it but when you let go it will stop slashing then go back to your previous weapon. (Great for those upclose fights!) 
7) A Grenade Toggler and Thrower which pulls out the grenade you have toggled and warns your team which type of grenade you are throwing then pulls it's pin and throws it and starts timer which will count down how many seconds until the grenade blows up. 
8) A Unzoom Crosshair color cycler. Which when pressed will change the color of the unzoomed moving crosshair. 
9) A Floating in Water Toggler which when turned on it will make you float in the water. (Good for when you want to say something buy your swimming in water and dont want to drown - Just activate it and type away your message and you wont drown. Press the key assigned to it to turn it back off. 
10) A right and left handed weapon models toggler, press it change which handed models you want to use. 
11) A C4 Planter alias which when the key assigned to it is pressed and held it will make you make you duck and notify your teammates that you are planting the C4 and start arming the it. If you let go it go back to your previous weapon. 
12) A Night Vision Alias which can adjust how bright or dark the night vision goggles are. 
13) A Radar toggler which when the key assigned to it is pressed it will either turn the radar on or off. 
14) A Walking/Running toggler when the key assigned to it is pressed it will either make you run or walk. 
15) A Crouching Toggler which when the key assigned to it is pressed it will either make you crouch or not crouch. 
16) Tested for days to see if it's solid, and it is! 
17) Fully modular, other scripts can be used with it, simply by creating a file called custom.cfg and placing the other scripts in that file. 
18) Easy for advanced and beginers to modify the script in any way they like. (The Script is Fully Commented) 


Installation Instructions
1. Simply point the installer to your main half-life or counter-strike directory. Please do not point the installer to your half-life\cstrike or counter-strike\cstrike directory.

2. Load up Counter-Strike and make you way to the Controls Menu. 

3. Setup your keys and then connect to your favourite server!

Troubleshooting:
1. When you go to use the radio or to buy weapons/items/ammo the buy menu stays up!

Due to the way the menu system in counter-strike works, the menus are heavily dependant on your ping to the server and also packet loss. The menu closes automatically for about 98% of people who use my script, but with the other 2% the menu stays open. In future versions on my CS script I am considering adding a few features, such as the menu will close if you jump / strafe / move. Until then their is a few things you can do to improve the chances of the menu closing.

- Load up notepad and navigate over to to your half-life\cstrike\nextwish directory 
- Open up the NW1cs.cfg file. 
- Find the following line:

alias ms0 "w; slot10; w; slot10; w; slot10; w; slot10; slot10; w; slot10; slot10; slot10; w; slot10; w2; slot10; w3; slot10; slot10; slot10" 

- Add the following code before the ending speach mark to that line.

;w ; slot10

- So it becomes something similar to this.

alias ms0 "w; slot10; w; slot10; w; slot10; w; slot10; slot10; w; slot10; slot10; slot10; w; slot10; w2; slot10; w3; slot10; slot10; slot10; w3; slot10"

- Load up counter-strike and play on your favorite server, if the menu doesn't close. Repeats steps 1 -> 6 until the menu closes.

2. When you go to quit, your half-life/gamespy crashes.
I'm not sure what is the cause of this, but I do know a fix. When exiting from Counter-Strike dont press escape and click on quit, instead pull down the console and type "quit" or assign a key to "quit" and use it instead.

3. Helpme, my console is missing!

- Go to your cs/hl shortcut. (if you use a program such as gamespy, you'll have to change the .exe command line as well, or just point it to the desktop shortcut) 
- Right click on the half-life/cs shortcut 
- Click on properties 
- Add -console to the command line (in the 'target' field). 
- Load up notepad and open up your config.cfg in /half-life/cstrike/ and find the command console "0" and change that to console "1" 
- If you can't find it, just add console "1" at the very end of the config since it gets executed from top to bottom. 


If you experience problems and have tried the solutions above please email support@nextwish.org 

Please include the following details in your email:
- Which modification your experiecing problems with.
- What the problem is or what is going wrong.
- What happens before the problem arises.
- Include any error messages you recieve or anything out of the oridinary.
- Include your system specs ( CPU Speed, CPU Brand, Amount of RAM, Harddisk size and amount of free space, Version of Windows, Video Card and what resolution you run ingame and graphics mode.)

Basically be a descriptive as possible as any emails with "It's just not working" end up in the trash. 

Legal and Contact Infortmation:
This modification is provided 'as-is', without any express or implied warranty.  In no event will the author be held liable for any damages arising from the use of this modification.

Permission is granted to anyone to use this modification for any purpose, including commercial applications, and to alter it and redistribute it freely, subject to the following restrictions:

1. The origin of this modification must not be misrepresented; you must not claim that you wrote the original modification. If you use this modification in part or whole for your own modification, an acknowledgment in the documentation would be appreciated but is not required.
2. Altered versions of this modification must be plainly marked as such, and must not be misrepresented as being the original version.
3. This notice/readme may not be removed or altered.

Geoffrey Huntley
webmaster@nextwish.org