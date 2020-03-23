# Defined in /home/michael/.config/fish/buffer/inostd_money-format.fish @ line 2
function inostd
    if exists $argv[2..-1]
        $argv[1] $argv[2..-1]
    else
        while read -l line
            $argv[1] $line
        end
    end
end
