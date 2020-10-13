# Defined in /usr/home/michael/.config/fish/buffer/?.fish @ line 6
function service
    if test -d ~/service/$argv[2]
        sv $argv[1] $argv[2]
    else
        sudo sv $argv[1] $argv[2]
    end
end
