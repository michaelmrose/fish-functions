function run-appkey-as-su
	set app (return-program-name (appkey $argv))
    if [ $app = urxvtc ]
        set app urxvt
    end
    eval sudo $app &
    er vi3op
    update-op-status
end
