# Defined in /home/michael/.config/fish/buffer/output-status-line.fish @ line 2
function output-status-line
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
  set mpd (mpc outputs|g enabled|cut -d \( -f2|cut -d \) -f1|condense_lines)
  echo $symbol (getvolume) via $mpd
end
