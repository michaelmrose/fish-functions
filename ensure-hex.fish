function ensure-hex
	set val $argv
    if not substr 0x $val
        echo (dectohex $val)
    else
        echo $val
    end
end
