function get-cpu-temp
	ctof (sensors | grep CPU\ Temp | cut -d ":" -f2 | cut -c 8-11)
end
