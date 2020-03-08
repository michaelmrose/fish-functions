# Defined in /home/michael/.config/fish/buffer/next-valid-entry_next-valid-in.fish @ line 22
function next-valid-index
	
    # ternary test $n -ge (count $lst) @ $lst[1] @ $lst[(math $n + 1)]
	set val $argv[1]
  set lst $argv[2..-1]
  set n (findindex $val $lst)
  if test $n -ge (count $lst)
    set ndx 1
  else
    set ndx (math $n + 1)
  end
  echo $lst[$ndx]
end
