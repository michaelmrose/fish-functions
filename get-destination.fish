# Defined in /home/michael/.config/fish/buffer/both_get-destination_publish-f.fish @ line 11
function get-destination
	switch (hostname)
        case michael-laptop
            set dest desktop
        case michael-desktop
            set dest laptop
    end
    echo $dest
end
