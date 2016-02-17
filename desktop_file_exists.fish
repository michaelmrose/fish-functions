function desktop_file_exists
	if test -f ~/.local/share/applications/{$argv}.desktop
    else if test -f /usr/share/applications/{$argv}.desktop
    end
end
