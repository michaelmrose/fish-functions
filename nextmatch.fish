function nextmatch
	set ids (windows-list | sort | grep -i (return-windowclass $argv) | cut -d " " -f1)
    set cnt (count $ids)
    set ndx (findindex (wininfo id hex) $ids)
    if not exists $ndx #there is no $ndx as the current window is not the same window class as $argv
        set next 1
    else if test $ndx -eq $cnt #we are already at the last item on the list we should start at the begining
        set next 1
    else
        set next (math "$ndx + 1")
    end
    focus id $ids[$next]
end
