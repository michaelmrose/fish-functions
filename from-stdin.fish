# Defined in /home/michael/.config/fish/buffer/from-stdin.fish @ line 2
function from-stdin
	set tmp /tmp/stdin-(uid)
  rm $tmp
  while read -l line
      echo $line >> $tmp
  end
  emacsclient -nw $tmp
  cat $tmp
end
