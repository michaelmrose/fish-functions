function c
	# if test -d $argv
        # set dir $argv
    # else if bmark $argv > /dev/null
        # set dir (bmark $argv) > /dev/null
    # else
        # set dir (autojump $argv) > /dev/null
    # end
    cd (dr $argv)
    # pushd $dir
end
