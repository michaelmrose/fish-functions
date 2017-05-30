function smarter-ctl
	active-playerctl $argv
  set -U lastPlaying $active
  signal-i3blocks playing
end
