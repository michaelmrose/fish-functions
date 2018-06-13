# Defined in /home/michael/.config/fish/buffer/sus.fish @ line 2
function sus
	# manage-share ensure-unmounted
  # sudo pm-suspend
  # wp recall
  # if [ (whoami) = michael ]
  #   setup-keyboard
  # end
  
  # if exists $argv
  #   switch $argv[1]
  #     case greet
  #       greeter
  #   end
  # end
  # manage-share ensure-mounted
  sudo rmmod wacom
  systemctl suspend;
  sleep 10
  fix-touchscreen
  setup-keyboard
  signal-i3blocks battery
  # sleep 10
  # if docked
  #     dockctl dock
  # end
end
