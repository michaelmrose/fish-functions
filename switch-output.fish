function switch-output
	set ndx (get-output-index $argv)
    set-default-sink $ndx
    move-all-audio-streams $ndx
    set -U default_sink $ndx
    set op (current-output)
    msg --id 7 -t "output changed to $op"
    # switchaudio.sh
    signal-i3blocks output
end
