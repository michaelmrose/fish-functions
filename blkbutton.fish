function blkbutton
	if exists $BLOCK_BUTTON
    switch $BLOCK_BUTTON
      case 1
       eval $argv
    end
  end
end
