function toggle-symbol-lock
	if [ $symbollock = true ]
        remap code 10 1 exclam
        remap code 11 2 at
        remap code 12 3 numbersign
        remap code 13 4 dollar
        remap code 14 5 percent
        remap code 15 6 asciicircum
        remap code 16 7 ampersand
        remap code 17 8 asterisk
        remap code 18 9 parenleft
        remap code 19 0 parenright
        set symbollock false
    else
        remap code 10 exclam 1
        remap code 11 at 2
        remap code 12 numbersign 3
        remap code 13 dollar 4
        remap code 14 percent 5
        remap code 15 asciicircum 6
        remap code 16 ampersand 7
        remap code 17 asterisk 8
        remap code 18 parenleft 9
        remap code 19 parenright 0
        set symbollock true
    end
end
