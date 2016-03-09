function m
	if exists $argv
    switch $argv[1]
      case list-playlists
        println (ls ~/playlists)
        return 0
      case ytube-pl
        umpv (list-youtube-playlist $argv[2..-1])
        return 0
      case yt 
        ytube (vals 2..-1 $argv)
        return 0
      case ls
        cat ~/playlists/$argv[2]
        return 0
      case rm
        rm ~/playlists/$argv[2]
        return 0
      case play
        set pl ~/playlists/$argv[2]
        if test -f $pl
          m (cat $pl)
        else
          m ytube-pl $argv[2]
        end
        return 0
      case narrow
        m ls $argv[2] | pick | m @replace:$argv @noplay
        return 0
      case from-clipboard
        set url (xclip -o -primary)
        m append-to $argv[2] "$url"
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
  set cnt 1
  for a in $arguments
    set arguments[$cnt] (pathof $arguments[$cnt])
    set cnt (increase $cnt)
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
  if not get-tag noplay $vals > /dev/null
    umpv $arguments &
  end
  return 0
end
