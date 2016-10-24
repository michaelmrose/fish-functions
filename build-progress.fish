function build-progress
	echo (sudo cat /var/log/emerge.log | grep -i complete)[-1] | cut -d '(' -f2 | cut -d ')' -f1
end
