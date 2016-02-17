function outerfn
	set xs $argv
    xs 2..-1
    innerfn
    # echo val of xs is $xs in outer
end
