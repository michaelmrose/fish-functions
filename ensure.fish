# Defined in /home/michael/.config/fish/buffer/ensure.fish @ line 2
function ensure
	set name $argv[1]
  set com (string lower $argv)
  if not pgrep $name
      eval $com &
    end
end
