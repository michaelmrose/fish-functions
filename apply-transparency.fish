function apply-transparency
	for i in (list-windows id)
        transset -i $i (return-trans-value (return-winclass $i)) > /dev/null
    end
    for i in (get-i3bar-ids)
        transset -i $i 0.9 > /dev/null
    end
end
