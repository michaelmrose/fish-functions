function reploadit
    vmtouch -t (xbps-query --regex -s $argv|nth 2|each xbps-query -f)
end
