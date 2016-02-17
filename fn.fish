function fn
	switch $argv[1]
    case tags
      ftags show
    case edit
      fe $argv[2..-1]
    case ls
      ftags list $argv[2..-1]
    case tag
      ftags tag $argv[2..-1]
    case new
      ftags new $argv[2..-1]
    case untag
      ftags rm $argv[2..-1]
    case save
      for fn in $argv[2..-1]
        funcsave $fn
        git -C ~/.config/fish/functions add $fn.fish
        git -C ~/.config/fish/functions commit -m "editing $fn.fish"
      end
    case rm
      # set fns (ftags return-fns $argv[2..-1])
      # set tags (ftags return-tags $argv[2..-1])
      set fns (filter-with-expr "not startswith @" $argv[2..-1])
      set tags (filter-with-expr "startswith @" $argv[2..-1])
      if exists $tags
        apply-to-list "ftags delete" $tags
      end
      for fn in $fns
        functions -e $fn
        rm ~/.config/fish/functions/$fn.fish
        ftags clear $fn
        git -C ~/.config/fish/functions rm $fn.fish
        git -C ~/.config/fish/functions commit -m "removed $fn.fish"
      end
    case export
      ftags export $argv[2..-1]
    case mv
      if startswith @ $argv[2]
        ftags rename $argv[2] $argv[3]
      else
        functions -c $argv[2] $argv[3]
        fn save $argv[3]
        fn rm $argv[2]
        echo $argv[2] >> ~/.config/fish/mappings/$argv[3] 
      end
    case import
      set file $argv[2]
      if ftags exists $file
        fn rm (fn ls @$file)
      end
      source $file
      set dir ~/.config/fish/functions/
      set fns (return-fnames-of-file $file) 
      for fn in $fns
        println (fn src $fn) > $dir/$fn.fish
        fn save $fn
        fn tag $fn @$file
      end
    case src
      functions $argv[2..-1]
    case pprint
      fn src $argv[2..-1] | fish-color
    case revs
      switch $argv[2]
        case edit
          edit-function-iterations $argv[3]
        case show
          function-iterations -p $argv[3]
        case set
          function-set-iteration $argv[3] $argv[4]
      end
    case show-iterations
      function-iterations $argv[2]
  end
end
