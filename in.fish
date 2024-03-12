function in
    set dir $PWD
    cd "$argv[1]"
    $argv[2..-1]
    cd $dir
end
