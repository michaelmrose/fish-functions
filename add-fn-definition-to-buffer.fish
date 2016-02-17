function add-fn-definition-to-buffer
	set buffer $argv[2]
  functions $argv[1] >> $buffer
end
