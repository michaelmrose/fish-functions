function m2
	set vals (vals 1..-1 $argv)
  set arguments (filter-with-expr "not startswith @" $vals)
  if not exists $arguments
    while read -l line
      set arguments $arguments $line
    end
  end
  echo v is $vals t is $tags and a is $arguments
  if get-tag replace $vals
    for p in (get-tag replace $vals)
      println $arguments > ~/playlists/$p
    end
  end
  if get-tag append $vals
    for p in (get-tag append $vals)
      println $arguments >> ~/playlists/$p
    end
  end
  if get-tag play $vals
    for p in (get-tag play $vals)
      m (cat ~/playlists/$p)
    end
  end
  # if get-tag list $vals
  #   for p in (get-tag list $vals)
  #     cat ~/playlists/$p
  #   end
  # end
  # if get-tag list-playlists
  #   ls ~/playlists
  # end
end
