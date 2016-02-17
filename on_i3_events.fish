function on_i3_events --description 'watches the events described and evaluates the function with the same name as events if it exists'
	i3subscribe $argv | while read -l line
                            if defined $line
                                eval $line
                            end
                        end
end
