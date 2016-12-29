function list-snapshots
	zf list -t snapshot |gr $argv | cut -d @ -f2 | cut -d ' ' -f1
end
