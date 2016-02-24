function m2
	set vals (vals 1..-1 $argv)
	set tags (get-tags $vals)
  set arguments (filter-with-expr "not startswith @" $vals)
  if not exists $arguments
    while read -l line
      set arguments $arguments $line
    end
  end
  echo v is $vals t is $tags and a is $arguments
  if contains playlist $tags
    echo if true
    for p in (get-tag playlist)
      echo p is $p
      println $arguments > ~/playlists/$p
    end
  end
end
