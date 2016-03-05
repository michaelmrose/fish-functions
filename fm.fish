function fm
	if not exists $argv
    spacefm (pwd)
  else
    spacefm $argv
  end
end
