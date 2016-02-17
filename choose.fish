function choose
	switch $argv
        case "java"
            sudo update-alternatives --config java
        case "scala"
            set versions (ls /opt | grep scala-2)
            echo $versions | pipeit fuzzymenu
            if test (sizeof $fquery) -gt 0
                sudo rm /opt/scala
                sudo ln -s /opt/$fquery /opt/scala
            else
                echo not a valid choice
            end
    end
end
