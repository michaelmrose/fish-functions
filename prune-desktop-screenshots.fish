# Defined in /home/michael/.config/fish/buffer/screenshot_screenshot-desktop.fish @ line 26
function prune-desktop-screenshots
	set wslist (list-workspaces)
  cd /tmp/screenshots 
  set screenshots (ls)
  for i in $screenshots
    if not contains $i $wslist
      rm /tmp/screenshots/$i
    end
  end
end
