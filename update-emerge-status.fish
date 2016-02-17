function update-emerge-status
	if pgrep emerge > /dev/null
        echo (sudo tail /var/log/emerge.log)[-1] | cut -d "(" -f2 | cut -d ")" -f1 | cut -c1-12
    else
        echo none
    end
end
