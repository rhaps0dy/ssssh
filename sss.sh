#/bin/bash
# If Linux, requires ImageMagick and xclip
ID=$(cat /dev/urandom | LC_ALL=C tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)

case $(uname) in
Darwin)
	OPEN=open
	CLIPBOARD=pbcopy
	# Take the -i argument for non-fullscreen capture
	SHOOT="screencapture $1"
	;;
Linux)
	OPEN=xdg-open
	CLIPBOARD=xclip
	SHOOT=import
	;;
esac

filename="/tmp/$ID.png"
$SHOOT $filename
scp "$filename" "$SSSSH_SSHDIR"
link="$SSSSH_URL/$ID.png"
echo $link
echo $link | $CLIPBOARD
$OPEN $link
