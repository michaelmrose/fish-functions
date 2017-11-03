# Defined in /home/michael/.config/fish/buffer/output-status-line_output-type.fish @ line 17
function output-type
	set op (ponymix -t sink defaults --short | head -1)
	if echo $op | grep Headset > /dev/null
    echo headphones
  else if echo $op | grep Built-in
    echo builtin
  else
    echo speakers
  end
end
