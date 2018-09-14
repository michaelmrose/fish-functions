# Defined in /home/michael/.config/fish/buffer/restore-internet.fish @ line 1
function restore-internet
	s rmmod --force iptable_filter
    s rmmod --force ip_tables
end
