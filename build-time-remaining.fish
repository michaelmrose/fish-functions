function build-time-remaining
	s genlop -ntc | gr eta | awk '{print $2}' | condense_lines | fishstdin sumof
end
