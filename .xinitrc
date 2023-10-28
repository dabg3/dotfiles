#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
run() {
	exec bspwm
}

debug() {
	picom -b
	exec bspwm -c ~/.config/bspwm/bspwmrc.debug
}

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
  	done
  	unset f
fi

# [ $1="xterm" ] why??
if [ "$2" = "debug" ]; then
	debug
else
	run
fi
