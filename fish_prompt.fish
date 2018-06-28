# Defined in /home/michael/.config/fish/buffer/fish_prompt.fish @ line 3
function fish_prompt
	set basicinfo (timeout --foreground 0.1 fish -c 'powerline-rs --modules user,host,cwd,ssh,jobs,perms --shell bare')
set gitinfo (timeout --foreground 0.25 fish -c 'powerline-rs --modules git,gitstage --shell bare')

if exists $gitinfo
    echo $basicinfo$gitinfo
else
    echo {$basicinfo}...
end


	# timeout 0.25 powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms,git,gitstage";or powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms"
end
