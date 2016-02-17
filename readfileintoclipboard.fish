function readfileintoclipboard
	cat $argv | xclip -i
  cat $argv | xclip -i -selection c
end
