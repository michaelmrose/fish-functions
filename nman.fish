function nman
	if in-terminal
    echo nvim -c "Nman $argv" &
  else
    qvim -c "Nman $argv" &
  end
end
