function saveme
	i3-save-tree --workspace (get-focused-workspace) | sed 's-^\([[:blank:]]*\)//\([[:blank:]]"class".*\),$-\1\2-' > ~/.i3/sessions/{$argv}.json
    set sessionscript ~/sessions/{$argv}
    echo '#!/usr/bin/fish' > $sessionscript
    chmod +x $sessionscript
    eval $EDITOR $sessionscript
end
