[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xbindkeys &
udiskie &
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl
keychain ~/.ssh/id_rsa
[ -f ~/.keychain/$HOSTNAME-sh ] && . ~/.keychain/$HOSTNAME-sh 2>/dev/null
[ -f ~/.keychain/$HOSTNAME-sh-gpg ] && . ~/.keychain/$HOSTNAME-sh-gpg 2>/dev/null
export PATH=$PATH:~/bin:~/Dev/go/bin
exec i3
