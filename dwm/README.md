### Dynamic Window Manager 
### (alias dwm)
---

***If you are using my repo all the paths are changed and dwm should be installed out of the box just run make clean install***

**Otherwise, Just To make Sure that dwm runs on FreeBSD install libXft and please change the path of include and lib directories in config.mk**
  
     #pkg install libXft 
  
     --X11INC = /usr/X11R6/include
     --X11LIB = /usr/X11R6/lib
  
     ++X11INC = /usr/local/include
     ++X11LIB = /usr/local/lib

Also, change the path of FREETYPEINC in config.mk

     --FREETYPEINC = /usr/include/freetype2
     ++FREETYPEINC = /usr/local/include/freetype2
     
I have not customise my Set-Up just changed the wallpaper of my choice, changed some colors for wallpaper theme and changed the statusbar to show necessary details and nothing fancy as I like to keep it minimal and straight forward to use.
Couple of things is what I added are Support for volume keys and for that I have used mixer and not pulse audio. 


![FreeBSD SS](https://user-images.githubusercontent.com/52949057/172211683-6f076da1-7cae-42db-a97b-7da6ee4b4c76.png)


I have also added support for print keys by using scrot so whenever you will hit the print button on your keyboard it will take screenshot.
Other than that I have created a simple dwmbar script that you can put in your .xprofile Or .xinitrc. 
