# Defined in /home/michael/.config/fish/buffer/publish-function.fish @ line 1
function publish-function
	scp ~/.config/fish/functions/$argv.fish desktop:/home/michael/.config/fish/functions/
end
