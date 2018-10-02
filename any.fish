# Defined in /home/michael/.config/fish/buffer/any.fish @ line 1
function any
	for condition in $argv
    if eval $condition
      return 0
    end
  end
  return 1
end
