# Defined in /home/michael/.config/fish/functions/nth.fish @ line 1
function nth
	while read -l line
    echo $line | awk "{print \$$argv}"
  end
end
