# Defined in /home/michael/.config/fish/buffer/then.fish @ line 1
function then
	while read -l line
    eval $argv
  end
end
