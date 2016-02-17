function list-sessions
	set sessions (ls ~/.i3/sessions)
    for i in $sessions
        echo $i | cut -d "." -f1
    end
end
