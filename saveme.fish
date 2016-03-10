function saveme
	# i3-save-tree --workspace (get-focused-workspace) | sed 's-^\([[:blank:]]*\)//\([[:blank:]]"class".*\),$--' > ~/.i3/sessions/{$argv}.json
	i3-save-tree --workspace (get-focused-workspace) | sed 's-^\([[:blank:]]*\)//\([[:blank:]]"class".*\),$--' > ~/.i3/sessions/{$argv}.json
  set sessionscript ~/sessions/{$argv}
  echo '#!/bin/fish' > $sessionscript
  chmod +x $sessionscript
  eval $EDITOR $sessionscript
end
