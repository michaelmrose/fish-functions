# Defined in /home/michael/.config/fish/buffer/filter-with_filter-with-fn.fish @ line 12
function filter-with-fn
	set fn $argv[1]
  set vals $argv[2..-1]
	for i in $vals
      if eval (echo $fn | sd _ $i) 
          echo $i
      end
  end
end
