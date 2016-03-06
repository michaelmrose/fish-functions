function convertargb
	if startswith-special '#' "$argv"
    echo argb:99(cdr $argv)
  end
end
