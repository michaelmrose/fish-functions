# Defined in /home/michael/.config/fish/buffer/workspace.fish @ line 2
function workspace
	set hostname (hostname)
  set desktopScreens a s d z x c 1 2 3
  set laptopScreens f g h j k l v b n m 4 5 6 7 8 9 0
  set -x DISPLAY :0
  if [ (hostname) = michael-desktop ]
    set localscreens $desktopScreens
    set remotehost laptop
    set key F12
  else
    set localscreens $laptopScreens
    set remotehost desktop
    set key F11
  end
	for i in (explode-words $argv)
    if true ## contains $i $localscreens
      i3-msg workspace $i
    else
      xdotool key $key
      ssh $remotehost "set -x DISPLAY :0;and i3 workspace $i"
    end
  end
  # signal-i3blocks pages
end
