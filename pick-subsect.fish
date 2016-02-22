function pick-subsect
	set choice (rfi match "select start: " (subsect $argv 1))
  echo $choice
end
