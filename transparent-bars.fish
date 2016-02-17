function transparent-bars
	for id in (get-i3bar-ids)
        transset -i $id 0.8 > /dev/null
    end
end
