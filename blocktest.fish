function blocktest
	echo bullshit
  if exists $BLOCK_BUTTON
    switch $BLOCK_BUTTON
      case 1
       wp recent
    end
  end
end
