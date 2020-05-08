# Defined in /home/michael/.config/fish/buffer/loop.fish @ line 1
function loop
    while true
        $argv[2..-1]
        sleep $argv[1]
    end
end
