function browser-memory-info
	if pgrep firefox > /dev/null
    set res $res firefox: (meminfo firefox)
  end
  if pgrep aurora > /dev/null
    set res $res aurora: (meminfo aurora)
  end
  echo $res
end
