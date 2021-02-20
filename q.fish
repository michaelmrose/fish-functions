# Defined in /usr/home/michael/.config/fish/buffer/q_qa.fish @ line 2
function q
	xbps-query -Rs  zathura|grep -E --invert-match ".*-dbg-.*|.*-devel-.*|.*-32bit-.*"
end
