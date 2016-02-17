function ssh-agent-wrap
	set sshagentstring (ssh-agent -s)
    set vals[1] (echo $sshagentstring[1] | cut -d "=" -f1)
    set vals[2] (echo $sshagentstring[2] | cut -d "=" -f1)
    set res[1] (echo $sshagentstring[1] | cut -d "=" -f2 | cut -d ";" -f1)
    set res[2] (echo $sshagentstring[2] | cut -d "=" -f2 | cut -d ";" -f1)
    echo set $vals[1] $res[1]
    echo set $vals[2] $res[2]
end
