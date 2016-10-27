function bga
	for job in (jobs | awk '{print $1}')
    eval bg \'\%$job\'
  end
end
