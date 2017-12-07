# Defined in /home/michael/.config/fish/buffer/nextnumber.fish @ line 2
function nextnumber
	for n in (seq 99)
    if contains $n $argv
      echo $n
      break
    end
  end
end
