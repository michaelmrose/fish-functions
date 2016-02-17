function runningp
	set app $argv[1]
    set com bash -c \"pgrep $app\" \> /dev/null
    switch (count $argv)
        case 1 #ex runningp app
            eval $com
        case 3 #ex runningp app on host
            set host $argv[3]
            ssh $host -q -t "$com"
        case 4 #ex runningp app local or host
            set host $argv[4]
            test (runningp $app) -o (runningp $app on $host)
    end
end
