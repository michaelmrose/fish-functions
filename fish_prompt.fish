# Defined in /home/michael/.config/fish/buffer/fish_prompt.fish @ line 2
function fish_prompt
	# if not timeout 0.5 /opt/bin/powerlineshell.py $status --shell bare ^/dev/null
  #   echo (pwd) \$: 
  # end
  # echo $USER:\$
	# /opt/bin/powerlineshell.py $status --shell bare ^/dev/null
  
  # timeout 0.5 powerline-rs --shell bare;or echo $USER:(pwd) \$
  # timeout 0.25 f fish_prompt_git f fish_prompt_light
    set simple (powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms")...

    # timeout 0.25 powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms,git,gitstage";or powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms"
    timeout 0.0001 powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms,git,gitstage";or echo $simple
end
