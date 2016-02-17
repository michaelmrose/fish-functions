function ftags
	ensure-dir-exists ~/.config/fish/tags
	set tagdir ~/.config/fish/tags
	switch $argv[1]
    case exists
      test -f $tagdir/$argv[2]
    case rename
      set tag (strip-char @ $argv[2])
      set dest (strip-char @ $argv[3])
      mv $tagdir/$tag $tagdir/$dest
    case list
      if startswith @ $argv[2]
        for tag in $argv[2..-1]
          set extracted (echo $tag | cut -d "@" -f2)
          set result $result (explode-words (cat ~/.config/fish/tags/$extracted))
        end
        println $result | sort -u
      else
        for i in (ag $argv[2] ~/.config/fish/tags -l --nocolor)
          cutlast / $i
        end
      end
    case show
        ls ~/.config/fish/tags
    case return-tags
      apply-to-list "strip-char @" (filter-with-expr "startswith @" $argv[2..-1])
    case return-fns
      filter-with-expr "not startswith @" $argv[2..-1]
    case tag
      set fns (ftags return-fns $argv[2..-1])
      set tags (ftags return-tags $argv[2..-1])
      for fn in $fns
        for tag in $tags
          echo adding $fn to tag $tag
          echo $fn >> $tagdir/$tag
          echo adding $fn to tag $tag
          echo $fn >> $tagdir/$tag
          echo (cat $tagdir/$tag | sort -u) > $tagdir/$tag
        end
      end
    case delete
      for tag in $argv[2..-1]
        set tag (strip-char @ $tag)
        if test -f $tagdir/$tag
          echo removing tag:$tag
          rm $tagdir/$tag
        end
      end
    case rm
      set fns (ftags return-fns $argv[2..-1])
      set tags (ftags return-tags $argv[2..-1])
      for fn in $fns
        for tag in $tags
           ftags remove $fn $tag
        end
      end
    case remove
      set tag $argv[3]
      set fn $argv[2]
      set fns (ftags list @$tag)
      echo (remove-from-list $fn $fns) > $tagdir/$tag
      if match '' (ftags list @$tag)
        ftags delete $tag
      end
    case clear
      apply-to-list "ftags remove $argv[2]" (ftags show)
    case taglast
      ftags tag $argv[2..-1] $LASTFNS
    case new
      set fns (ftags return-fns $argv[2..-1])
      set tags (filter-with-expr "startswith @" $argv[2..-1])
      if exists $fns
        fe $fns
        ftags taglast $tags
      else
        echo please provide a new tag name and at least one function
      end
    case export
      set tag $argv[2]
      set out $argv[3]
      rm $out
      set fns (ftags list @$tag)
      for fn in $fns[1..-2]
        functions $fn >> $out
        echo >> $out
      end
      functions $fns[-1] >> $out
  end
end
