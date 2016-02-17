function nman
	if in-terminal
    eval nvim -c "Nman $argv" &
  else
    qvim -c "Nman $argv" &
  end
end
