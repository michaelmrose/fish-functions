# Defined in /home/michael/.config/fish/buffer/filter-with_filter-with-fn.fish @ line 11
function filter-with-fn
	set fn $argv[1]
	  for i in $argv[2..-1]
        if eval $fn $i
            echo $i
        end
    end
end
