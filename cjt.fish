function cjt
    set buffer /tmp/errors.txt
    if exists $argv
        cj -M:test -n "$argv" | tee $buffer
    else
        cj -M:test | tee $buffer
    end
    clip $buffer
end
