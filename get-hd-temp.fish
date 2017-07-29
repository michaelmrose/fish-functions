# Defined in /home/michael/.config/fish/buffer/get-hd-temp.fish @ line 2
function get-hd-temp
	# s hddtemp /dev/sda | condense_spaces | cut -d ' ' -f4
  for d in (disks)
    set acc $acc (hd-temp $d 2> /dev/null)
  end
  echo $acc
end
