# Defined in /home/michael/.config/fish/buffer/toemacs.fish @ line 1
function toemacs
	set target /tmp/toemacs.conf
  rm $target
  while read -l line
    echo $line >> $target
  end
  emc $target &
end
