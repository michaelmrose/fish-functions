# Defined in /home/michael/.config/fish/buffer/histtofn.fish @ line 1
function histtofn
	echo $history[2] > /tmp/histfunc.fish
  emc /tmp/histfunc.fish
  funcsave $argv
end
