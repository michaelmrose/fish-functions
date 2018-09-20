# Defined in /home/michael/.config/fish/buffer/fish_prompt.fish @ line 2
function fish_prompt
	# if not timeout 0.5 /opt/bin/powerlineshell.py $status --shell bare ^/dev/null
  #   echo (pwd) \$: 
  # end
  # echo $USER:\$
	# /opt/bin/powerlineshell.py $status --shell bare ^/dev/null
  
  # timeout 0.5 powerline-rs --shell bare;or echo $USER:(pwd) \$
  # timeout 0.25 f fish_prompt_git f fish_prompt_light
  # timeout 0.25 powerline-rs --modules "user,host,cwd,ssh,jobs,perms,git,gitstage" --shell bare $status;or powerline-rs --shell bare --modules "user,host,cwd,ssh,jobs,perms" $status
  # powerline-rs --modules "user,host,cwd,ssh,jobs,perms,git,gitstage" --shell bare $status
  # powerline-rs --shell bare $status
  # powerline-rs --modules user,host,cwd,ssh,jobs,perms,git,gitstage --shell bare $status
  # powerline-rs --modules ssh,cwd,perms,git,gitstage,root --shell bare $status
  timeout 0.25 powerline-rs --modules ssh,user,host,cwd,perms,git,gitstage,root --shell bare $status;or powerline-rs --modules ssh,user,host,cwd,perms,root --shell bare $status
end
