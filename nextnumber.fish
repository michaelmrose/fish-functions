# Defined in /home/michael/.config/fish/buffer/nextnumber.fish @ line 2
function nextnumber
	if not exists $argv
    while read -l $line
      nextnumber $line
    end
  else
    for n in (seq 99)
      if not contains $n $argv
        echo $n
        break
      end
    end
  end
end
