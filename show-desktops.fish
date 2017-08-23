# Defined in /home/michael/.config/fish/buffer/show-desktops.fish @ line 2
function show-desktops
	set choice (echo (cutlast / (sxiv -tbfor /tmp/screenshots)) | cut -d . -f1)
  echo ws $choice
end
