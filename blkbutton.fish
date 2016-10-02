function blkbutton
	if exists $BLOCK_BUTTON
    switch $BLOCK_BUTTON
      case $argv[1]
       eval $argv[2..-1]
    end
  end
end
