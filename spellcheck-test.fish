# Defined in /home/michael/.config/fish/buffer/spellcheck-test.fish @ line 1
function spellcheck-test
	set hunspell (echo $argv | hunspell -a |sed -n '2p'| cut -d : -f2 |trim)  
    set aspell (echo $argv | aspell -a |sed -n '2p'| cut -d : -f2 |trim)  
    echo hunspell says: $hunspell
    echo \n
    echo aspell says: $aspell
end
