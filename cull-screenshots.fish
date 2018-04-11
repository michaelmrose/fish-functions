# Defined in /home/michael/.config/fish/buffer/cull-screenshots_screenshot-on.fish @ line 2
function cull-screenshots
	set workspaces (list-workspaces)
	for i in ~/.config/i3/screenshots/*
      set name (extract-filename $i)
      # if the current name is no longer a valid ws
      if not contains $name $workspaces
          rm ~/.config/i3/screenshots/$name.jpg
      end
    end
end
