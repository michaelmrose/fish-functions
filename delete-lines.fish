function delete-lines
	set start $argv[1]
    set end $argv[2]
    set file $argv[3]
    sed -i -e "$start,$end d" $file
end
