function pick-version
	pkg i ={$argv}-(rfi match "select a version of $argv" (equery y $argv | condense_spaces | cut -d " " -f1 | sed 's/\[I\]//g' | grep -E '[0-9]'))
end
