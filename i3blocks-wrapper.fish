# Defined in /home/michael/.config/fish/buffer/i3blocks-wrapper.fish @ line 2
function i3blocks-wrapper
	set click "$argv[1]"
    set output "$argv[2]"
    echo click is $click
    # if exists $BLOCK_BUTTON
    #     eval "$click"
    # else
    #     eval $output
    # end
end
