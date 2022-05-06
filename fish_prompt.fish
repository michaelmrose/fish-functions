function fish_prompt
		set myprompt ( timeout 0.25 powerline-rs --modules ssh,user,host,cwd,perms,git,gitstage,root --shell bare $status;or powerline-rs --modules ssh,user,host,cwd,perms,root,jobs --shell bare $status)
		echo $myprompt ↷  
➥" "
		# echo ┏╸{$myprompt}
		# echo ┗╸❯❯❯
end
