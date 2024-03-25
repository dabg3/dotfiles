#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
run() {
	picom -b
	xrdb merge ~/.Xresources
	# same config for both monitors - brightness, temperature
	redshift -m randr:crtc=0 -c ~/.config/redshift/redshift.conf &
	redshift -m randr:crtc=1 -c ~/.config/redshift/redshift.conf &
	dbus-launch --exit-with-session bspwm
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
