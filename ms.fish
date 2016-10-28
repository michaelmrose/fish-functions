function ms
	eval sudo sed -i \'s/$argv[1]=[ynm]/$argv[1]=$argv[2]/g\' /usr/src/linux/.config
end
