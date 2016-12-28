function configure-gaps
	if i3 --version | gr gaps
    i3 gaps inner all set 10
    i3 gaps outer all set 10
  end
end
