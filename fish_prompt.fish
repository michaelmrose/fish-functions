# Defined in /home/michael/.config/fish/buffer/fish_prompt.fish @ line 2
function fish_prompt
	timeout 0.25 powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms,git,gitstage";or powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms"
end
