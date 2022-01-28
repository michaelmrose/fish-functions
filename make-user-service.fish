function make-user-service
    set name $argv[1]
    set command $argv[2..-1]
    set service_folder ~/service/$name
    set service_file $service_folder/run
    mkdir $service_folder
    echo #!/usr/bin/sh > $service_file
    echo "exec $command" >> $service_file
    chmod +x $service_file
    emacs -c $service_file
    ln -s ~/service/$name ~/service/enabled
end
