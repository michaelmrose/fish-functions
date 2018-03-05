# Defined in /home/michael/.config/fish/buffer/both.fish @ line 1
function both
	set machines desktop
    eval $argv
    for i in $machines
        ssh $i $argv
    end
end
