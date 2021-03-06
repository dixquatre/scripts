#!/bin/sh

#if ps -C cmus > /dev/null; then
if cmus-remote -Q >/dev/null 2>&1; then

	artist=`cmus-remote -Q |
		grep --text '^tag artist' |
		sed '/^tag artistsort/d' |
		awk '{gsub("tag artist ", "");print}'`
	title=`cmus-remote -Q |
		grep --text '^tag title' |
		sed -e 's/tag title //' |
		awk '{gsub("tag title ","");print}'`

	echo "Now Playing: $artist - $title"
else
	echo ""
fi
