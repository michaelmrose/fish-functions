# Defined in /home/michael/.config/fish/buffer/fe.fish @ line 2
function fe
	#better funced
	for i in $argv
    if startswith @ $i
      set results $results (ftags list $i)
    else
      set results $results $i
    end
  end
  set results (println $results | sort -d)
  set name (trunc 30 (sort-list $results | sed 's# #_#g'))
  ensure-dir-exists ~/.config/fish/buffer
  set tmp ~/.config/fish/buffer/$name.fish
  if test -f $tmp
    rm $tmp
  end
  touch $tmp
  if test (count $results) -gt 1
    for i in $results[1..-2]
      println (function-definition $i) >> $tmp
      echo >> $tmp
    end
  end
  println (function-definition $results[-1]) >> $tmp
  set checksum (checksum-simple $tmp)
  # eval $EDITOR $tmp
  # emacsclient -nw $tmp
  emacsclient -nw $tmp
  set newsum (checksum-simple $tmp)
  if not match $checksum $newsum
    funcsave-file $tmp
    set -U LASTFNS (return-fnames-of-file $tmp)
  end
  nothing-urgent
end
