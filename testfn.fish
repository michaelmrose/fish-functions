function testfn
	if pstree --show-parents %self | grep '\-steam\-'
    i3-msg move window to workspace r
  end
end
