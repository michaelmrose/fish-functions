function fish_prompt
	if exists $VIRTUAL_ENV
	  functions -e fish_prompt
	  functions -c _old_fish_prompt fish_prompt
	end
		set myprompt ( timeout 0.5 powerline-rs --modules ssh,user,host,cwd,perms,git,gitstage,root,virtualenv --shell bare $status;or powerline-rs --modules ssh,user,host,cwd,perms,root --shell bare $status)
		# echo $myprompt ➥
		echo ┏╸{$myprompt}
		echo "┗╸❯❯❯ "
end
