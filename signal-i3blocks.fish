# Defined in /home/michael/.config/fish/buffer/signal-i3blocks.fish @ line 2
function signal-i3blocks
	switch $argv
        case vi3
            set val 1
        case output
            set val 2
        case playing
            set val 3
        case volume
            set val 5
        case windowtitle
            set val 6
        case wallpaper
            set val 7
        case message
            set val 8
        case sched
            set val 9
        case time
             set val 10
      case battery
          set 4
    case pages
      set val 11
        case "*"
            set val $argv
    end
    pkill -RTMIN+$val i3blocks
end
