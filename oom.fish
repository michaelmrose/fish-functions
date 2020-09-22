# Defined in /usr/home/michael/.config/fish/buffer/oom.fish @ line 1
function oom
    earlyoom -m 10 -r 5 --avoid '(^|/)(init|Xorg|ssh|i3)$' --prefer '(^|/)(java|chromium|firefox)$'
end
