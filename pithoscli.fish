function pithoscli
	if not exists $argv
    pithos &
    return 0
  end
    
	switch $argv
    case help
      echo try love ban tired unrate or help
      return 0
    case love
      set command LoveCurrentSong
    case ban
      set command BanCurrentSong
    case tired
      set command TiredSong
    case unrate
      set command UnRateSong
  end
  
dbus-send --print-reply --dest=net.kevinmehall.Pithos /net/kevinmehall/Pithos net.kevinmehall.Pithos.$command
end
