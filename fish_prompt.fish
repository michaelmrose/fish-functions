function fish_prompt
	if echo (pwd) | grep '^/usr/portage' > /dev/null                                                                                           ❮ 2 ms ❮ 
    /opt/bin/powerlineshell.py $status --shell bare
  else
    fish_fallback_prompt
  end
end
