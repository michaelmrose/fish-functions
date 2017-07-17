# Defined in /home/michael/.config/fish/buffer/numenera.fish @ line 2
function numenera
	xrr single
  killall compton
# LANG='en_US.UTF-8' ./TidesOfNumenera
  set -x LANG en_US.UTF-8
  /med/dl/numenera/Torment.Tides.of.Numenera/TidesOfNumenera
end
