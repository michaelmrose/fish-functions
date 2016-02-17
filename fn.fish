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
    case delete
      for fn in $argv[2..-1]
        functions -e $fn
        rm ~/.config/fish/functions/$fn.fish
        ftags removeall $fn
      end
    case rm
      switch $argv[2]
        case tag
          ftags delete $argv[3..-1]
        case fn
          fd $argv[3..-1]
      end
    case export
      ftags export $argv[2..-1]
    case src
      functions $argv[2..-1]
    case iterations
      switch $argv[2]
        case edit
          edit-function-iterations $argv[3]
        case show
          function-iterations $argv[3]
        case set
          function-set-iteration $argv[3] $argv[4]
      end
    case show-iterations
      function-iterations $argv[2]
  end
end
