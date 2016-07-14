function serv
	switch $argv[1]
        case show
            if test (count $argv) -gt 1
                rc-update show $argv[2..-1]
            else
                rc-update show
            end
            echo
            # echo -e {$white}autostarting: {$green}$restartable_services
            return 0
        case autorestart
            toggle-restartables
            return 0
        case list
            for i in (ls /etc/init.d/)
                describe-service $i
            end
            return 0

    end
    switch $argv[2]
        case status
            sudo /etc/init.d/$argv[1] status
        case scriptstatus
            serv $argv[1] status | condense_spaces | cut -d " " -f3
        case start
            sudo /etc/init.d/$argv[1] start
        case stop
            sudo /etc/init.d/$argv[1] stop
        case add
            sudo rc-update add $argv[1] $argv[3]
        case delete
            sudo rc-update delete $argv[1] $argv[3]
        # case restart
        #     toggle-restartable $argv[1]
        case show
            # serv show | grep $argv[1] | condense_spaces
            # describe-service $argv[1]
            condense-fns "serv show | grep $argv[1] | condense_spaces" := "describe-service $argv[1]" "serv $argv[1] status"
        case '*'
          sudo /etc/init.d/$argv[1] $argv[2..-1]
    end
end
