function steampick
	steamapps | cut -d ' ' -f1 | rofi -dmenu -p "pick a game" | xargs ff steamplay
end
