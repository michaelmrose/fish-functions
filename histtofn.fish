# Defined in /home/michael/.config/fish/buffer/histtofn.fish @ line 2
function histtofn
	echo fn $argv > /tmp/histfunc.fish
	echo $history[1] > /tmp/histfunc.fish
  emc /tmp/histfunc.fish
  funcsave $argv
end
