function show-mouse-battery
	solaar-cli show 1 -v | grep Battery | cut -d ":" -f2 | trim | cut -d "," -f1
end
