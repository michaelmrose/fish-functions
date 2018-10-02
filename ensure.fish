# Defined in /home/michael/.config/fish/buffer/ensure.fish @ line 1
function ensure
	set name $argv[1]
    set com $argv[2..-1]
    if not pgrep $name
        eval $com &
    end
end
