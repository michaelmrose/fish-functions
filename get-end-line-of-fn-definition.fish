function get-end-line-of-fn-definition
	set begining (get-line-of-fn-definition $argv)
    set size (get-size-of-fn $argv)
    set ending (math "$begining + $size -1")
    echo $ending
end
