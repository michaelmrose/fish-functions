# Defined in /home/michael/.config/fish/buffer/accuweather.fish @ line 1
function accuweather
	set url 'https://www.accuweather.com/en/us/bremerton-wa/98337/weather-forecast/331425'
  set file /tmp/weather
  curl '$url' > $file
  set temp (cat $file | gr temp_f | cut -d : -f2 | cut -d "'" -f2)
  set realfeel (cat $file | pup 'li[data-href="https://www.accuweather.com/en/us/bremerton-wa/98337/current-weather/331425"] span[class="realfeel"] text{}' | condense_spaces | cut -d ' ' -f2)
  echo t $temp r $realfeel
end
