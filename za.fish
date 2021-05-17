# Defined in /usr/home/michael/.config/fish/buffer/za.fish @ line 2
function za
		if exists $argv
				cd "$argv"
		end
		zoxide add
end
