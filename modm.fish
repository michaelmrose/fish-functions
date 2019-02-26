# Defined in /home/michael/.config/fish/buffer/modm.fish @ line 2
function modm
	switch $argv[1]
        case ls
            if test (count $argv) -eq 1
                lsmod
            else
                lsmod |g $argv[2..-1]
            end
        case p
            s modprobe $argv[2..-1] 
        case t
            s rmmod $argv[2..-1]
            s modprobe $argv[2..-1]
        case r
            s rmmod $argv[2..-1]
    end
end
