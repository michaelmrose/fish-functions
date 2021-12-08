function ebook-open
    set -l book (pathof "$argv")
    rdr -o "$book"
end
