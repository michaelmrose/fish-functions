function noderepl
	set args (vals 1..-1 $argv)
  node --harmony --harmony_default_parameters --harmony_arrow_functions $args
end
