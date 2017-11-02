# Defined in /home/michael/.config/fish/buffer/fish_prompt.fish @ line 2
function fish_prompt
	if not timeout 0.5 /opt/bin/powerlineshell.py $status --shell bare ^/dev/null
    echo (pwd) \$: 
  end
  # echo $USER:\$
end
