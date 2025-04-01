function gputemp
    sensors|g 'edge|junction|mem'|choose -f ' |\+|°.' 1|sumof|divideby 3
end
