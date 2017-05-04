function compact-array
	for i in (p $argv)
    if exists $i
      set res $res $i
    end
  end
  p $res
end
