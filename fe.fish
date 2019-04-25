# Defined in /home/michael/.config/fish/buffer/fe_fe.fish @ line 37
function fe
	for i in $argv
    if startswith @ $i
      set results $results (ftags list $i)
    else
      set results $results $i
    end
  end
  if test (count $results) -gt 1
      set results (println $results | sort -d)
      set name (trunc 30 (sort-list $results | sed 's# #_#g'))
  end
  # ensure-dir-exists ~/.config/fish/buffer
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
  emacsclient -c $tmp
  set newsum (checksum-simple $tmp)
  if not match $checksum $newsum
    funcsave-file $tmp
    set -U LASTFNS (return-fnames-of-file $tmp)
  end
  # nothing-urgent
end
