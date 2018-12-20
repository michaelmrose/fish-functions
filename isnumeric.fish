# Defined in /home/michael/.config/fish/buffer/isnumeric.fish @ line 2
function isnumeric
	if exists $argv
        echo $argv | grep -E '^[.0-9]+$' > /dev/null
    else
        return 1
  end
end
