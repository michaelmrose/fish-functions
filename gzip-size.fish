function gzip-size
    gzip -9 -c $argv | wc -c | numfmt --to=iec
end
