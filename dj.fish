function dj

        #  set prior "$PWD"
        #  while not test -d .git
        #     cd ..
        #  end
        # fd manage.py|each dirname|each cd
        if match $argv[1] run
           python manage.py runserver (either $argv[2..-1] 7000)
        else
            python manage.py $argv
        end
        cd $prior
end
