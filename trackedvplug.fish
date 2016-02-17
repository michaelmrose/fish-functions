function trackedvplug
	cat .gitmodules | grep path | cut -d "/" -f2
end
