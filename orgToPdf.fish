function orgToPdf
    switch (count $argv)
        case 1
            set file "$argv[1]"
            set theme zenburn
        case  2
            set file "$argv[1]"
            set theme "$argv[2]"
    end
    set out (string replace -r 'org$' pdf $file)
    pandoc $file \
        --from=org \
        --to=pdf \
        --pdf-engine=lualatex \
        --highlight-style=$theme \
        -V geometry:top=0.45in,bottom=0.65in,left=0.65in,right=0.65in \
        -V mainfont="Libertinus Serif" \
        -V sansfont="Libertinus Sans" \
        -V monofont="JetBrains Mono" \
        -o $out
end
