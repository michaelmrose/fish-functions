# Defined in /home/michael/.config/fish/buffer/find-font.fish @ line 1
function find-font
	fc-list |g $argv | cut -d . -f3- | cut -d " " -f2-|cut -d : -f1
end
