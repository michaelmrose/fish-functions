function cjt
    if exists $argv
        cj -M:test -n "$argv" | tee /tmp/errrors.txt
    else
        cj -M:test | tee /tmp/errors.txt
    end
    clip /tmp/errors.txt
end
