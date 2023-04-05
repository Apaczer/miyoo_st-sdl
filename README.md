st - simple terminal
--------------------
st is a simple virtual terminal emulator for X which sucks less.

Modified to run on Miyoo/Bittboy devices.  
=> TTF fonts replaced by embedded pixel font (from TIC-80)  
=> onscreen keyboard (see keyboard.c for button bindings)

Keys for MiyooCFW 2.0: 
- pad: select key
- A: press key
- Y: toggles key (useful for shift/ctrl...)
- L1: is shift
- R1: is backspace
- X: change keyboard location (top/bottom)
- B: show / hide keyboard
- START: is enter
- SELECT: is tab
- RESET: exits the terminal
- L2: left on command line
- R2: right on command line
- L3: up on command line
- R3: down command line
- hodl L1+R1: display HELP screen

Requirements
------------
In order to build st you need the Xlib header files & libsdl1.2dev.
Also, you'll need a working SDK build, grab one here:
https://github.com/MiyooCFW/buildroot/


Installation
------------
Compile it using ``make -f Makefile.miyoo`` or grab a compiled version from the releases tab


Running st
----------
Just launch it from your device's applications section

Issues
----------
There is no SCROLL_UP or SCROLL_DOWN event trigger in current ``st-sdl`` source, as well as in upstream [``st`` vanilla code](https://git.suckless.org/st/). The latter code should be patched with [scrollback.diff](https://st.suckless.org/patches/scrollback/st-scrollback-0.8.5.diff), from one of patch iterations (see https://st.suckless.org/patches/scrollback/)

Credits
-------
Based on  [Aurélien APTEL](mailto:aurelien.aptel@gmail.com) source code.  
Based on code made by Benob
