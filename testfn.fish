function testfn
	if pstree -s %self | grep 'steam'
    i3-msg move window to workspace r
  end
end
