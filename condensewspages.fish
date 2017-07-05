function condensewspages
	set focused (get-focused-workspace)
  set letter (echo $focused | cut -c1)
  set pages (list-workspaces | gr "^$letter")
  p $pages
end
