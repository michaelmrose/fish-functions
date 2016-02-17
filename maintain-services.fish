function maintain-services
	while true
        if match $restart_services true
            for serv in $restartable_services
                #echo s is $serv
                switch (processtype $serv)
                    case process
                        if not pgrep $serv > /dev/null
                            fish -c $serv &
                            echo restarted $serv at (date)
                         end
                    case service 
                        if not match (serv $serv scriptstatus) started 
                            serv $serv stop
                            serv $serv start
                            echo restarted $serv at (date)
                        end
                end
            end
        end
        sleep 30
    end
end
