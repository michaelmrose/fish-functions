# Defined in /home/michael/.config/fish/buffer/tdown.fish @ line 2
function tdown
	set info (prompt 'title @ duration')
  set title (echo $info | cut -d @ -f1| trim)
  set duration (echo $info | cut -d @ -f2 | trim)
  echo kitty -1 -e termdown -T "$title" $duration
end
