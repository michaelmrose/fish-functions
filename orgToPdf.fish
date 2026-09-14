function orgToPdf
    switch (count $argv)
        case 1
            set file "$argv[1]"
            set theme hemisu
        case 2
            set file "$argv[1]"
            set theme "$argv[2]"
    end

    set builtInStyles (pandoc --list-highlight-styles)
    if not contains $theme $builtInStyles
        set theme ~/.local/share/pandoc/highlight-themes/$theme.theme
    end

    set out (string replace -r 'org$' pdf $file)

    set -l base (path basename -E "$file")
    set -l builddir (path dirname "$file")/.orgToPdf
    set -l tex "$builddir/$base.tex"

    mkdir -p "$builddir"

    pandoc "$file" \
        --from=org \
        --to=latex \
        --standalone \
        --highlight-style="$theme" \
        -V geometry:top=0.45in,bottom=0.65in,left=0.65in,right=0.65in \
        -V mainfont="Libertinus Serif" \
        -V sansfont="Libertinus Sans" \
        -V monofont="JetBrains Mono" \
        -o "$tex"

    or return

    latexmk \
        -lualatex \
        -silent \
        -halt-on-error \
        -outdir="$builddir" \
        "$tex"

    or return

    cp "$builddir/$base.pdf" "$out"
end
