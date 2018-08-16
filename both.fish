# Defined in /home/michael/.config/fish/buffer/both.fish @ line 2
function both
	set dest (get-destination)
	  set machines $dest
    eval $argv
    for i in $machines
        ssh $i $argv
    end
end
