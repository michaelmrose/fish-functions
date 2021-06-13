# Defined in /usr/home/michael/.config/fish/buffer/edit_emd_emf.fish @ line 2
function edit
	# if not exists $argv
  #   while read -l line
  #     set acc $acc $line
  #   end
  # else
  #   set acc $argv
  # end
  # # set tmp /tmp/(uid)
  # set tmp /tmp/edited
  # println $acc > $tmp   
  # # nvim $tmp
  # eval $EDITOR $tmp
  # cat $tmp
	emacsclient -cn $argv
end
