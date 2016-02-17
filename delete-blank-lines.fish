function delete-blank-lines
	echo $argv | sed '/^\s*$/d'
end
