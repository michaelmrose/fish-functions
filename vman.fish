function vman
	man $argv | col -b | qvim -R -c 'set ft=man nolist' -c 'colorscheme distinguished' -c 'set number! relativenumber!' -c 'set guifont=Source\ Code\ Pro\ for\ Powerline\ 13' -
end
