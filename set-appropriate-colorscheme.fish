function set-appropriate-colorscheme
	set daylight 8-19
        if within $daylight (hours)
            colorscheme greenandyellow
            echo yellow
        else
            colorscheme blue
            echo blue
        end
end
