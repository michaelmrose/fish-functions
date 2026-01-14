function show-keys

    xev | grep -A2 --line-buffered '^Key' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'
end
