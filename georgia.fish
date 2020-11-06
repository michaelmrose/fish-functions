# Defined in /usr/home/michael/.config/fish/buffer/georgia.fish @ line 2
function georgia
    http 'https://www.nytimes.com/interactive/2020/11/03/us/elections/results-georgia.html'|pup|g 'currently up'|choose 13|sd , ''
end
