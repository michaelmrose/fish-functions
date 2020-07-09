# Defined in /home/michael/.config/fish/buffer/mpd-status-line4_output-status.fish @ line 44
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
  echo $symbol (getvolume)
end
