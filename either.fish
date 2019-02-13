# Defined in /home/michael/.config/fish/buffer/newfuckingweather.fish @ line 16
function either
	if exists $argv[1]
        echo $argv[1]
    else
        echo $argv[2]
    end
    return 0
end
