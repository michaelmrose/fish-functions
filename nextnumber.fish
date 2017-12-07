# Defined in /home/michael/.config/fish/buffer/nextnumber.fish @ line 2
function nextnumber
	while read -l line
    for n in (seq 99)
      echo line is $line
      echo n is $n
      if not contains $n $line
        echo $n
        break
      end
    end
  end
end
