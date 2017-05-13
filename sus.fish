function sus
	manage-share ensure-unmounted
  sudo pm-suspend
  wp recall
  if [ (whoami) = michael ]
    setup-keyboard
  end
  
  if exists $argv
    switch $argv[1]
      case greet
        greeter
    end
  end
  manage-share ensure-mounted
end
