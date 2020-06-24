# Defined in /home/michael/.config/fish/buffer/set-wallpaper.fish @ line 2
function set-wallpaper
	set img (pathof $argv[1])
    # echo i is $img
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
  add-to-recent-backgrounds $img
  set -U bgstyle (cutlastn "/" 2 $img)
  set-lightdm-bg $img
  set -U bgimage $img
  walfn
  signal-i3blocks 12
end
