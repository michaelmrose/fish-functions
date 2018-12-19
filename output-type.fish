# Defined in /home/michael/.config/fish/buffer/output-type.fish @ line 2
function output-type
	set op (ponymix -t sink defaults --short | head -1)
	if echo $op | grep Headset > /dev/null
    echo headphones
  else if echo $op | grep Built-in > /dev/null
      echo built-in
  else
    echo speakers
  end
end
