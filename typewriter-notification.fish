# Defined in /home/michael/.config/fish/buffer/typewriter-notification.fish @ line 2
function typewriter-notification
    # for i in (seq 1 (count $msg))
    #     ms $argv[1..$i]
    #     sleep 0.2
    # end
   set length (echo $argv|wc -c)
   for i in (seq 1 $length)
       ms (echo $argv |cut -c 1-$i)
   end
end
