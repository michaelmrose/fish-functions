# Defined in /home/michael/.config/fish/buffer/apply-to-head.fish @ line 1
function apply-to-head
	while read -l line
    set collection $collection $line
  end
  eval $argv $collection
end
