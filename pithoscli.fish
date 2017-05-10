function pithoscli
	switch $argv
    case love
      set command LoveCurrentSong
    case ban
      set command BanCurrentSong
  end
  
dbus-send --print-reply --dest=net.kevinmehall.Pithos /net/kevinmehall/Pithos net.kevinmehall.Pithos.$command
end
