# Defined in /home/michael/.config/fish/buffer/i3blocks-wrapper.fish @ line 2
function i3blocks-wrapper
	set click (echo $argv | cut -d @ -f1)
    set output (echo $argv | cut -d @ -f2)
    if exists $BLOCK_BUTTON
        eval "$click" > /dev/null
        eval $output
    else
        eval $output
    end
end
