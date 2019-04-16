# Defined in /home/michael/.config/fish/buffer/filter-with_filter-with-fn.fish @ line 12
function filter-with-fn
	for i in $argv[2..-1]
      if eval (echo $argv[1] | sd _ $i) 
          echo $i
      end
  end
end
