# Defined in /usr/home/michael/.config/fish/buffer/installsearch.fish @ line 1
function installsearch
		i (qa $argv|select|choose 1|choose -f - 0)
end
