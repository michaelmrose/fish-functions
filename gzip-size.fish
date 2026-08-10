function gzip-size
    printf "gzip: "
    gzip -9 -c $argv | wc -c | numfmt --to=iec
    printf "brotli "
    brotli -q 11 -c $argv | wc -c | numfmt --to=iec

end
