# Defined in /home/michael/.config/fish/buffer/allwindows.fish @ line 2
function allwindows
	i3-msg [class=.\*] $argv
end
