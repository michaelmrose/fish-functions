function pman
	set app $argv
    set pdf /tmp/{$app}.pdf

    if man $app > /dev/null
        man -t $app | ps2pdf - $pdf
    else
        help2man $app > /tmp/{$app}.txt
        man -lt /tmp/{$app}.txt | ps2pdf - $pdf
    end
    o /tmp/{$argv}.pdf &
end
