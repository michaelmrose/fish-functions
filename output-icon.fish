# Defined in /usr/home/michael/.config/fish/buffer/output-icon.fish @ line 2
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
  # echo $symbol

	echo "{\"state\":\"Critical\", \"text\": \"$symbol\"}"
end
