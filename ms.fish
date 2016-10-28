function ms
	eval sudo sed -i \'s/$argv[1]=[ynm]/$argv[1]=$argv[2]/g\' $argv[3]
end
