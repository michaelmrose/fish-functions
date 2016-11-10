function password-unlock
	while true
    if [ (echo '' | /usr/bin/rofi -password -dmenu -p 'password: ') = "jazz" ]
      unlockme;and break;
    else
      msg "try again"
    end
  end
end
