function ensure-dec
	set val $argv
    if substr 0x $val
        echo (hextodec $val)
    else
        echo $val
    end
end
