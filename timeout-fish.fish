# Defined in /home/michael/.config/fish/buffer/timeout-fish.fish @ line 2
function timeout-fish
	set time $argv[1]
    set com $argv[2..-1]
    timeout $time ff $com
end
