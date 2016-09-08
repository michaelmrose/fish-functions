function fish_prompt
	if pwd | grep '^/usr/portage' 2> /dev/null                                                                                           ❮ 2 ms ❮ 
    fish_fallback_prompt
  else
    /opt/bin/powerlineshell.py $status --shell bare
  end
end
