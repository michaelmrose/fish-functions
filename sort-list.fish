function sort-list
	set list (println $argv | sort -d)
  for i in $list
    set res $res $i
  end
  echo $res
end
