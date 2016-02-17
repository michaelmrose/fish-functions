function get-fname-of-file
	if exists $argv
        set sizeofext (math (sizeof (get-ext $argv)) +1)
        set sizeofname (math (sizeof $argv) - $sizeofext)
        echo $argv | cut -c1-$sizeofname
    else
        return 1
    end
    # else
    #     while read -l line
    #         get-ext $line
    #     end
    # end
end
