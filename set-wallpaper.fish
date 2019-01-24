# Defined in /home/michael/.config/fish/buffer/set-wallpaper.fish @ line 2
function set-wallpaper
	set img $argv[1]
  echo i is $img
  set ratio (get-image-aspect-ratio-type $img)
  switch $ratio
      case "narrow"
          set format max
      case "wide"
          set format fill
      case "extrawide"
          set format max
      case "superwide"
          set format max
  end
  feh --bg-{$format} $img
  set -U bgstyle (cutlastn "/" 2 $img)
  s cp $img /etc/lightdm/bg.jpg
  set -U bgimage $img
  signal-i3blocks 12
end
