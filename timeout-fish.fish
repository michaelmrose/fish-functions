# Defined in /home/michael/.config/fish/buffer/timeout-fish.fish @ line 1
function timeout-fish
	set time $argv[1]
    set com $argv[2..-1]
    timeout $time fish -c $com
end
