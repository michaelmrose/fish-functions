function cpuusage
	set pid (pidof $argv)
    set cnt 1
    for i in $pid
        set result (ps aux|awk  '{print $2,$3,$4}'| grep $pid[$cnt] | cut -d " " -f2)
        echo {$result}%
        set cnt (math "$cnt + 1")
    end
end
