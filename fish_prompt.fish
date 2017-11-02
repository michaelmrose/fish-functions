# Defined in /home/michael/.config/fish/buffer/fish_prompt.fish @ line 2
function fish_prompt
	if timeout 1
	  /opt/bin/powerlineshell.py $status --shell bare ^/dev/null
  else 
    echo '$: ' 
  end
  # echo $USER:\$
end
