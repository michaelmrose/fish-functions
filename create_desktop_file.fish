function create_desktop_file
	set app $argv[1]
    set mimetype $argv[2]
    set text[1] "[Desktop Entry]"
    set text[2] "Exec=$app"
    set text[3] "MimeType=$mimetype"\;
    set text[4] "Name=$app"
    set text[5] "NoDisplay=true"
    set text[6] "Type=Application"
    
    set target ~/.local/share/applications/{$app}.desktop
    println $text > $target
end
