# Defined in /home/michael/.config/fish/buffer/both_get-destination_publish-f.fish @ line 2
function both
	set dest (get-destination)
	  set machines $dest
    eval $argv
    for i in $machines
        ssh $i $argv
    end
end
