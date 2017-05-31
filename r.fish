function r
	for item in $argv
    if exists item
      echo $item
      return 0
    end
  end
  
	# if exists $argv[1]
  #   echo $argv[1]
  # else
  #   echo $argv[2]
  # end
end
