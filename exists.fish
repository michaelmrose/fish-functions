function exists
	if test (count $argv) -gt 0
    for i in $argv
      if test (sizeof $i) -gt 0
        return 0
      end
    end
  end
  return 1
end
