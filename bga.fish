function bga
	for job in (jobs | awk '{print $1}')
    bg %$job
  end
end
