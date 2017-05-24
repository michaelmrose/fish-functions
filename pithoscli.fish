function pithoscli
	set dbus 'dbus-send --print-reply --dest=net.kevinmehall.Pithos /net/kevinmehall/Pithos net.kevinmehall.Pithos'

	if not exists $argv
    set command 'pithos &'
  else
    switch $argv
      case help
        set command 'echo try love ban tired unrate or help'
      case love
        set command $dbus.LoveCurrentSong
        echo c is $command
      case ban
        set command $dbus.BanCurrentSong
      case tired
        set command $dbus.TiredSong
      case unrate
        set command $dbus.UnRateSong
    end
  end
    
  
# dbus-send --print-reply --dest=net.kevinmehall.Pithos /net/kevinmehall/Pithos net.kevinmehall.Pithos.$command
  # eval $command
end
