# Defined in /home/michael/.config/fish/buffer/stripnumbers.fish @ line 1
function stripnumbers
	while read -l line
    echo $line | sed 's#[0-9]##g'
  end
end
