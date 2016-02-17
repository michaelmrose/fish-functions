function sigtest
	killall -SIGSTOP i3
    sleep 3
    killall -SIGCONT i3
end
