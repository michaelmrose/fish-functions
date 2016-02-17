function status-message
	switch $argv[1]
        case read
            if exists $temporary_message
                echo $temporary_message
            else
                switch (count $recent_messages)
                    case 0
                        echo
                    case '*'
                        echo $recent_messages[$recent_message_ndx] \($recent_message_ndx of (count $recent_messages)\)
                end
            end
        case temporary
            set -U temporary_message $argv[2]
            signal-i3blocks message
            # notify-sound
            sleep $argv[3]
            er temporary_message
            signal-i3blocks message
        case write
            switch (count $argv)
                case 3
                    set -U recent_messages_commands (take 20 (println $argv[3] $recent_messages_commands))
                    set -U recent_messages (take 20 (println $argv[2] $recent_messages))
                case 2
                    set -U recent_messages_commands (take 20 (println nil $recent_messages_commands))
                    set -U recent_messages (take 20 (println $argv[2] $recent_messages))
            end
            signal-i3blocks message 
            # notify-sound
        case view
            status-message read > /tmp/stsmessage
            nv /tmp/stsmessage
        case delete
            set end (count $recent_messages)
            switch $recent_message_ndx
                case 1
                    if test (count $recent_messages) -le 1
                        status-message erase-all
                    else
                        set -U recent_messages $recent_messages[2..-1]
                        set -U recent_messages_commands $recent_messages_commands[2..-1]
                    end
                case $end
                    set -U recent_messages $recent_messages[1..-2]
                    set -U recent_messages_commands $recent_messages_commands[1..-2]
                case '*'
                    set endoffirst (math "$recent_message_ndx - 1")
                    set startofsecond (math "$recent_message_ndx + 1")
                    set -U recent_messages (println $recent_messages[1..$endoffirst] $recent_messages[$startofsecond..-1])
                    set -U recent_messages_commands (println $recent_messages_commands[1..$endoffirst] $recent_messages_commands[$startofsecond..-1])
            end
            status-message next
            sleep 1
            signal-i3blocks message
        case prev
            if test $recent_message_ndx -lt (count $recent_messages) 
                set -U recent_message_ndx (math "$recent_message_ndx + 1")
            end
            signal-i3blocks message 
        case next
            if test $recent_message_ndx -gt 1 
                set -U recent_message_ndx (math "$recent_message_ndx - 1")
            end
            signal-i3blocks message 
        case activate
            eval $recent_messages_commands[$recent_message_ndx]
        case erase-all
            set -U recent_message_ndx 1
            er recent_messages
            er recent_messages_commands
            signal-i3blocks message 
        case '*'
            status-message temporary $argv
    end
end
