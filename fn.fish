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
      set fns (ftags return-fns $argv[2..-1])
      set tags (ftags return-tags $argv[2..-1])
      apply-to-list "ftags delete" $tags
      for fn in $fns
        functions -e $fn
        rm ~/.config/fish/functions/$fn.fish
        ftags clear $fn
        git -C ~/.config/fish/functions rm $fn.fish
        git -C ~/.config/fish/functions commit -m "removed $fn.fish"
      end
    case export
      ftags export $argv[2..-1]
    case import
      set file $argv[2]
      source $file
      set name (cutlast / $argv[2] | cut -d "." -f1)
      set dir ~/.config/fish/functions/$name
      ensure-dir-exists $dir
      set fns (return-fnames-of-file $file) 
      for fn in $fns
        println (fn src $fn) > $dir/$fn.fish
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
