# Defined in /home/michael/.config/fish/buffer/testfn.fish @ line 2
function testfn
	switch $argv
        case bob
            echo hi bob
        case '*'
            echo fu
    end
end
