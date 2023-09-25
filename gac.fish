function gac
    git add $argv[1]
    git commit -m "$argv[2..-1]"
end
