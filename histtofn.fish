# Defined in /home/michael/.config/fish/buffer/histtofn.fish @ line 2
function histtofn
	echo "function $argv" >> /tmp/histfunc.fish
  echo $history[1] >> /tmp/histfunc.fish
  echo "end" >> /tmp/histfunc.fish
  emc /tmp/histfunc.fish
  funcsave $argv
  rm /tmp/histfunc.fish
end
