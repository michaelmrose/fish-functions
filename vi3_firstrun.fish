function vi3_firstrun
	cat ~/.config/fish/config.fish /opt/vi3/fishconfig.txt > /tmp/tmpvi3fish
    cp /tmp/tmpvi3fish ~/.config/fish/config.fish
    cp ~/proj/vi3/personalconfigexample ~/.i3/personalconfig
    cp ~/proj/vi3/template.json ~/.i3/sessions/template.json
    mkdir ~/sessions
    mkdir ~/.i3/sessions
    mkdir ~/.i3/colors
    set -U colors greenandyellow
    update-vi3-config
end
