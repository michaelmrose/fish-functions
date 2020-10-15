# Defined in /usr/home/michael/.config/fish/buffer/output-icon_output-status-line.fish @ line 1
function output-icon
	switch (output-type)
    case headphones
      set symbol 
    case speakers
      set symbol 
      case built-in
          set symbol 
    case "*"
      set symbol 
  end
  echo $symbol
end
