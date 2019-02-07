# Defined in /home/michael/.config/fish/buffer/find-font.fish @ line 2
function find-font
	fc-list |g $argv|rev|cut -d : -f1-2|rev|trim|sort -u
end
