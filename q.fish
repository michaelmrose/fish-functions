# Defined in /usr/home/michael/.config/fish/buffer/q.fish @ line 2
function q
	xbps-query -Rs  $argv|grep -E --invert-match ".*-dbg-.*|.*-devel-.*|.*-32bit-.*"
end
