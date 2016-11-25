function noderepl
	set args (vals 1..-1 $argv)
  # node --harmony --harmony_default_parameters --harmony_arrow_functions $args
eval node --harmony (node --v8-options | gr "in progress" | trim | cut -d ' ' -f1 | condense_lines) $args
end
