# Defined in /home/michael/.config/fish/buffer/in-and-out.fish @ line 1
function inostd
    if exists $argv[2..-1]
        $argv[1] $argv[2..-1]
    else
        while read -l line
            $argv[1] $line
        end
    end
end
