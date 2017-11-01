# Defined in /home/michael/.config/fish/buffer/closh.fish @ line 2
function closh
	set dir (pwd)
	cd /home/michael/extproj/lumoclosh/node_modules/closh/bin/
	/home/michael/extproj/lumoclosh/node_modules/closh/bin/closh.js
  cd $dir
end
