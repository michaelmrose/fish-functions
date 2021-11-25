function cputemp
    sensors|grep Tdie|awk '{print $2}'|cut -c2-
end
