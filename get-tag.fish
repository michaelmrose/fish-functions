function get-tag
	set res (filter-with-expr "startswith @$argv[1]" $argv[2..-1] | cut -d : -f2)
  if exists $res
    println $res
  else
    return 1
  end
end
