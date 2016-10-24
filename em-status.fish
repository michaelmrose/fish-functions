function em-status
	if pgrep emerge > /dev/null
    echo progress: (build-progress) complete eta: (build-time-remaining) min
  end
        # set res (sudo genlop -ntc 2> /dev/null)
        # # echo res is $res
        # if exists $res
        #     if startswith ! $res
        #       return 1
        #     end
        # end
    # else
        # return 1
    # end
    # echo $res
    # if startswith ! $output
    #     return 1
    # else
    #     echo $output
    # end
end
