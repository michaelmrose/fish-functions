function check-nstatus
	if quick-ping $argv[1]
    echo contacted $argv[2]
  else
    echo cant reach $argv[2]
  end
end
