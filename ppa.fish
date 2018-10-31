# Defined in /home/michael/.config/fish/buffer/ppa.fish @ line 2
function ppa
	sudo add-apt-repository ppa:$argv
  sudo apt-get update
end
