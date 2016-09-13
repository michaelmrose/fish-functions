function eval-and-shell
	set file (write-file $argv)
	chmod +x $file
  lilyterm -H -e fish -c $file
end
