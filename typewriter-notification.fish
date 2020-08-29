# Defined in /usr/home/michael/.config/fish/buffer/typewriter-notification.fish @ line 2
function typewriter-notification
    for i in (seq 1 (count $argv))
        ms $argv[1..$i]
        sleep 0.1
    end
   # set title $argv[1]
   # set message $argv[2..-1]
   # set length (echo $message|wc -c)
   # for i in (seq 1 $length)
   #     echo foo
   #     set current (echo $message|cut -c 1-$i)
   #     twmnc -d 4000 --id 1 --icon ~/images/icons/xkill.png --title $title --content $current
   #     sleep 0.15
   # end
end
