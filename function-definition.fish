function function-definition
	if functions $argv > /dev/null
    functions $argv
  else
    echo function $argv
    echo
    echo end
  end
end
