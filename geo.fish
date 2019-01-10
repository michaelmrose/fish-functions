# Defined in /home/michael/.config/fish/buffer/geo.fish @ line 2
function geo
	if exists argv
        ./home/michael/extproj/whereami/node_modules/@rafaelrinaldi/whereami/./cli.js -r |n /'lat|long' c:2 t|condense_lines | sd " " ""
    else
	      echo "47.56626170000001,-122.6264645"
    end
end
