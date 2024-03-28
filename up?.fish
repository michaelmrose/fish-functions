function up?
    set service_status (service status $argv)
    echo $service_status
   if [ (echo $service_status | choose -f : 0 ) = down]
       return 1
   end
end
