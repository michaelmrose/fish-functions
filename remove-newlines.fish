function remove-newlines
	echo $argv | sed ':a;N;$!ba;s/\n/ /g'
end
