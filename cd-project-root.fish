function cd-project-root
	if [ (pwd) = "/" ]
        return 1
    end
    if not test -d .git
        cd ..
        cd-project-root
    else
        return 0;
    end
end
