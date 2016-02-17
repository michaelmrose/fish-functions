function pman2 --description 'opens pdf version of man page or help' --argument app
	set pdf /tmp/{$app}.pdf
    if man $app > /dev/null
        set com man $app
    else
        set com help2man $app
    end
    man -lt (write-file $com) | ps2pdf - $pdf
    open $pdf
end
