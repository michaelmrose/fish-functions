function browser-memory-info
	set res ""
  if pgrep firefox
    set res $res firefox: (meminfo firefox)
  end
  if pgrep aurora
    set res $res aurora: (meminfo aurora)
  end
  echo $res
end
