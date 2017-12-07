# Defined in /home/michael/.config/fish/buffer/nextnumber.fish @ line 2
function nextnumber
	while read -l line
    echo $line | for n in (seq 99)
      if not contains $n $argv
        echo $n
        break
      end
    end
  end
end
