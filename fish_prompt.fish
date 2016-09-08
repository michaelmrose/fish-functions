function fish_prompt
	if echo (pwd) | grep '^/usr/portage' > /dev/null                                                                                           ❮ 2 ms ❮ 
    fish_fallback_prompt
  else
    /opt/bin/powerlineshell.py $status --shell bare
  end
end
