function build-time-remaining
	set res (s genlop -ntc | gr eta | awk '{print $2}' | condense_lines | fishstdin sumof)
  if test $res -lt 1
    echo any time
  else
    echo $res
  end
end
