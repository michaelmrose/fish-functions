# Defined in /home/michael/.config/fish/buffer/apply-transparency.fish @ line 2
function apply-transparency
	for i in (list-windows id)
    # transset -i $i (return-trans-value (return-winclass $i)) > /dev/null
  end
  for i in (get-i3bar-ids)
    transset -i $i 0.7 > /dev/null
    end
end
