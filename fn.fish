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
      edit-function-iterations $argv[2]
    case show-iterations
      function-iterations $argv[2]
  end
end
