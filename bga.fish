function bga
	for job in (jobs | awk '{print $1}')
    echo bg \'\%$job\'
  end
end
