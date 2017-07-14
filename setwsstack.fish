# Defined in /home/michael/.config/fish/buffer/getwsstack_setwsstack.fish @ line 13
function setwsstack
	set var wsstack$argv[1]
  set -U $var $argv[2]
end
