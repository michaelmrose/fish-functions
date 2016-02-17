function free-memory
	set mem_info (explode (echo (free -m)[2] | cut -d ":" -f2- | condense_spaces))
    set free {$mem_info[3]}M
    set buffers {$mem_info[5]}M
    set cache {$mem_info[6]}M
    echo free: $free buff: $buffers cache: $cache
    # addmemsize $free $buffers $cache
end
