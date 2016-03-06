function convertargb
	if startswith-special '#' "$argv"
    echo argb:FF(cdr $argv)
  else
    echo $argv
  end
end
