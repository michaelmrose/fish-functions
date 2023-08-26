function fish_prompt
        set myprompt ( timeout 0.5 powerline-rs --modules ssh,user,host,cwd,perms,git,gitstage,root,virtualenv --shell bare $status;or powerline-rs --modules ssh,user,host,cwd,perms,root --shell bare $status)
        set myprompt (starship prompt)
        # echo $myprompt ➥
        echo ┏╸{$myprompt}
        echo "┗╸❯❯❯ "
end
