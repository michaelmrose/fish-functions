function list-backgrounds
	findall-list dirs=(get-folders-for-backgrounds $argv) types=jpg,jpeg,bmp,png exlude=xrated
end
