# Defined in /home/michael/.config/fish/buffer/snapshot.fish @ line 1
function snapshot
	set date (date '+%m-%d-%y-%R')
  zf snapshot -r tank@$date
end
