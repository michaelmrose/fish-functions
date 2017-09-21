# Defined in /home/michael/.config/fish/buffer/versions.fish @ line 1
function versions
	p (ls (cutlastn / 2- (pkg which $argv))) | gr $argv
end
