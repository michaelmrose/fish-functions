# Defined in /home/michael/.config/fish/buffer/stripquotes.fish @ line 2
function stripquotes
	if exists $argv
    echo $argv | sed 's/[\'"]//g'
  else
    while read -l line
    stripquotes $line
  end
  end
end
