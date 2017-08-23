# Defined in /home/michael/.config/fish/buffer/show-desktops.fish @ line 2
function show-desktops
	screenshot-desktop
	prune-desktop-screenshots
	set choice (echo (cutlast / (sxiv -tbfor /tmp/screenshots)) | cut -d . -f1)
  for c in $choice
    ws $c
  end
end
