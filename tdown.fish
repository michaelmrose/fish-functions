# Defined in /home/michael/.config/fish/buffer/tdown.fish @ line 2
function tdown
	set info (prompt 'title @ duration')
  set title (echo $info | cut -d @ -f1| trim)
  set duration (echo $info | cut -d @ -f2 | trim)
  kitty -o font_size=50 -e termdown --no-figlet -v en-us -T "$title" $duration
end
