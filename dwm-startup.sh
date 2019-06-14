# if this is not dwm exit from script

# Save X11 preferences
# xrdb -merge ~/.Xresources

# Lock the screen after 30m inactivity
if ! pgrep xautolock &>/dev/null; then
	xautolock -time 30 -locker slock &>/dev/null &
fi

# Redshift (to hurt less the eyes)
if ! pgrep redshift &>/dev/null; then
	redshift -l '45.94541:-66.66558' &>/dev/null &
fi

## ssh-agen
# eval $(/usr/bin/killall ssh-agent; /usr/bin/ssh-agent)

# set custom wallpapers
"${HOME}"/.local/bin/setbg

# remove mouse cursor from screen
if ! pgrep unclutter &>/dev/null; then
	unclutter --root -idle 1 &
fi

if ! pgrep syndaemon &>/dev/null; then
	syndaemon -i .5 -R -d
fi

# run dropbox
if ! pgrep dropbox &>/dev/null; then
	ionice -c 3 dropbox start -i &>/dev/null &
	sleep 2 && cpulimit -b -l 20 -e dropbox
fi

# remove caps locs
setxkbmap -layout it -variant us -option caps:escape

# start MPD, conf=!/.mpdconf
#if ! pgrep mpd &>/dev/null; then
#	mpd
#fi

# start dunst notification
if ! pgrep dunst &>/dev/null; then
	dunst &
fi

export SUDO_ASKPASS=="${HOME}/.local/bin/dmenupass"

UPDATE_PERIODE='15s'
while true; do
	"${HOME}"/.local/bin/dwm-statusbar.sh
	sleep "${UPDATE_PERIODE}"
done &

