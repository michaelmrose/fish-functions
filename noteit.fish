function noteit
	set tmp /tmp/notes-(uid)
    if exists $argv
        echo $argv > $tmp
    end
    nv $tmp -c "Simplenote -n"
    #qvim $tmp -c "Simplenote -n" -c "quit"
end
