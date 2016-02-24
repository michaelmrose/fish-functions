function m2
	if exists $argv
    switch $argv[1]
      case list-playlists
        println (ls ~/playlists)
        return 0
      case ls
        cat ~/playlists/$argv[2]
        return 0
      case play
        m2 (cat ~/playlists/$argv[2])
        return 0
    end
  end
	set vals (vals 1..-1 $argv)
  set arguments (filter-with-expr "not startswith @" $vals)
  # echo v is $vals t is $tags and a is $arguments
  if not exists $arguments or get-tag play
    while read -l line
      set arguments $arguments $line
    end
  end
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
  # if get-tag play $vals
  #   for p in (get-tag play $vals)
  #     echo 
  #     m2 (cat ~/playlists/$p)
  #   end
  # end
  # if get-tag ls $vals
  #   for p in (get-tag ls $vals)
  #     cat ~/playlists/$p
  #   end
  # end
  umpv $arguments &
end
