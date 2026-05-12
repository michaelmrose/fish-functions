function orgToPdf
    set file "$argv[1]"
    set out (string replace -r 'org$' pdf $file)
pandoc $file \
            --from=org \
            --to=pdf \
            --pdf-engine=lualatex \
            --highlight-style=zenburn \
            -V geometry:top=0.45in,bottom=0.65in,left=0.65in,right=0.65in \
            -V mainfont="Libertinus Serif" \
            -V sansfont="Libertinus Sans" \
            -V monofont="JetBrains Mono" \
            -o $out
end
