function m
	if exists $argv
    switch $argv[1]
      case list-playlists
        println (ls ~/playlists)
        return 0
      case ls
        cat ~/playlists/$argv[2]
        return 0
      case rm
        rm ~/playlists/$argv[2]
        return 0
      case play
        m (cat ~/playlists/$argv[2])
        return 0
    end
  end
  set vals (vals 1..-1 $argv)
  set arguments (filter-with-expr "not startswith @" $vals)
  if not exists $arguments
    while read -l line
      set arguments $arguments $line
    end
  end
  if get-tag replace $vals > /dev/null
    for p in (get-tag replace $vals)
      println $arguments > ~/playlists/$p
    end
  end
  if get-tag append $vals > /dev/null
    for p in (get-tag append $vals)
      println $arguments >> ~/playlists/$p
    end
  end
  if not get-tag noplay > /dev/null
    umpv $arguments &
  end
  return 0
end
