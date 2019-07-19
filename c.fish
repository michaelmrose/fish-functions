# Defined in /home/michael/.config/fish/buffer/c.fish @ line 2
function c
	
    # else if bmark $argv > /dev/null
        # set dir (bmark $argv) > /dev/null
    # else
        # set dir (autojump $argv) > /dev/null
    # end
    if exists $argv
        set target (dr $argv)
        set -U LAST_DIR $target
    end
    cd $LAST_DIR
    # pushd $dir
end
