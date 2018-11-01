# Defined in /home/michael/.config/fish/buffer/ppa.fish @ line 2
function ppa
	sudo add-apt-repository ppa:$argv
  and sudo apt-get update
end
