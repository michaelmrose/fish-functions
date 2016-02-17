function mem_info
	set mem_info (explode (echo (free -h)[2] | cut -c 6- | condense_spaces))
    set total $mem_info[1]
    set used $mem_info[2]
    set free $mem_info[3]
    set buffers $mem_info[5]
    set cache $mem_info[6]
    # set total_free (addmemsize $free)
    echo -e total: $mem_info[1] used: $mem_info[2] free: $mem_info[3] buffers: $mem_info[5] cache: $mem_info[6]
end
