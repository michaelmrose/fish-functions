# Defined in /home/michael/.config/fish/buffer/both_get-destination_publish-f.fish @ line 22
function publish-function
	set dest (get-destination)
    scp ~/.config/fish/functions/$argv.fish $dest:/home/michael/.config/fish/functions/
end
