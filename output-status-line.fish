# Defined in /home/michael/.config/fish/buffer/output-status-line_output-type.fish @ line 2
function output-status-line
	switch (output-type)
    case headphones
      set symbol 
    case speakers
      set symbol 
    case builtin
      set symbol 
    case "*"
      set symbol 
  end
  echo $symbol (getvolume)
end
