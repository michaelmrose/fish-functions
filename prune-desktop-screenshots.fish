# Defined in /home/michael/.config/fish/buffer/prune-desktop-screenshots_scre.fish @ line 2
function prune-desktop-screenshots
	set wslist (list-workspaces)
  cd /tmp/screenshots 
  set screenshots (ls | cut -d . -f1)
  for i in $screenshots
    if not contains $i $wslist
      rm /tmp/screenshots/$i.png
    end
  end
end
