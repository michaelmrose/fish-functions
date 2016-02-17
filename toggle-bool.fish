function toggle-bool
	match-lists $argv "0 f F false False" "1 t T true True" error
end
