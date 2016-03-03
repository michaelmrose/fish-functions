function saveme
	i3-save-tree --workspace (get-focused-workspace) | sed 's-^\([[:blank:]]*\)//\([[:blank:]]"class".*\),$--' > ~/.i3/sessions/{$argv}.json
    set sessionscript ~/sessions/{$argv}
    echo '#!/usr/bin/fish' > $sessionscript
    chmod +x $sessionscript
    if in-terminal
      eval $EDITOR $sessionscript
    else
      qvim $sessionscript
    end
end
