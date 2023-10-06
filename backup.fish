function backup
    # backup ssd to raid array tank

    echo syncing root filesystem
    syncoid -r trident/ROOT/before-mongo tank/backup/machines/void
    echo done

    echo syncing home folder
    syncoid -r trident/home tank/backup/machines/home
    echo done

    # backup raid array tank to external drive in sbc "toaster"

    echo syncing raid to external
    syncoid -r tank odroid:ocean/tank
    echo done
end
