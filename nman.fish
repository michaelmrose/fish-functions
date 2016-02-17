function nman
	if in-terminal
    nvim -c "Nman $argv" &
  else
    qvim -c "Nman $argv" &
  end
end
