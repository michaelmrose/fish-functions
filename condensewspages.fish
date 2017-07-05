function condensewspages
	set focused (get-focused-workspace)
  set letter (echo $focused | cut -c1)
  set pages (list-workspaces | gr "^$letter")
  for page in $pages
    gws $page
  end
end
