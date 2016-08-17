function m
	# usage examples
  # m play ytube or local playlist
  # m files @replace|append:playlist
  # somecommand | m  @replace|append:playlist
  # m yt pl=playlist
  # m watch some key words, to play local files
	if test (count $argv) -gt 0
    switch $argv[1]
      case list-playlists
        println (ls ~/playlists)
        return 0
      case ytube-pl
        umpv (list-youtube-playlist $argv[2..-1])
        return 0
      case f
        find-video $argv[2..-1]
        return 0
      case q
        set files (find-video $argv[2..-1])
        switch (count $files)
          case 0
            nil
          case 1
            umpv $files
          case '*'
            umpv (rfi match 'select video: ' (println $files))
          end
        # umpv (rfi match 'select video: ' (find-video $argv[2..-1]))
        return 0
      case yt 
        ytube (vals 2..-1 $argv)
        return 0
      case ls
        if test -f ~/playlists/$argv[2]
          cat ~/playlists/$argv[2]
        else
          list-youtube-playlist $argv[2..-1]
        end
        return 0
      case rm
        rm ~/playlists/$argv[2]
        return 0
      case edit
        eval $EDITOR ~/playlists/$argv[2]
        return 0
      case play
        set pl ~/playlists/$argv[2]
        if test -f $pl
          m open (m ls $argv[2])
        else
          m ytube-pl $argv[2..-1]
        end
        return 0
      case open
        umpv $argv[2..-1] &
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
