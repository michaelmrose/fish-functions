# Defined in /home/michael/.config/fish/buffer/output-status-line.fish @ line 2
function output-status-line
	switch (output-type)
        case headphones
            set symbol 
        case speakers
            set symbol 
    case dock
      set symbol 
    case "*"
      set symbol 
    end
    echo $symbol (getvolume)
end
