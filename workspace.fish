# Defined in /home/michael/.config/fish/buffer/gws_tws_vi3_get-workspace_vi3_.fish @ line 36
function workspace
	# set hostname (hostname)
  # set desktopScreens a s d z x c 1 2 3
  # set laptopScreens f g h j k l v b n m 4 5 6 7 8 9 0
  # set -x DISPLAY :0
  # if [ (hostname) = michael-desktop ]
  #   set localscreens $desktopScreens
  #   set remotehost laptop
  # else
  #   set localscreens $laptopScreens
  #   set remotehost desktop
  # end
	# for i in (explode-words $argv)
  #   if contains $i $localscreens
  #     i3-msg workspace $i
  #   else
  #     echo switching machines and ws
  #     ssh $remotehost "set -x DISPLAY :0; and i3-msg workspace $i"
  #     switch-machines
  #   end
  # end
  # signal-i3blocks pages
# echo hi |  screenshot-workspace
    set w (decorate-workspacename $argv)
  i3-msg workspace $w
end
