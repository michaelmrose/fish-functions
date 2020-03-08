# Defined in /home/michael/.config/fish/buffer/next-valid-entry_next-valid-in.fish @ line 2
function next-valid-entry
	set current $argv[1]
  set ndx 3
  for item in $argv[2..-2]
      if test $current = $item
          echo $argv[$ndx]
          return 0
        else
            set ndx (math $ndx + 1)
        end
    end
    if test $current = $argv[-1]
        echo $argv[2]
        return 0
    else
        return 1
    end
end
