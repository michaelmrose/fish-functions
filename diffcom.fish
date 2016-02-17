function diffcom
	diff (write-file (eval $argv[1])) (write-file (eval $argv[2]))
end
