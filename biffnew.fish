function biffnew
    clj -M -e '(load-string (slurp "https://biffweb.com/new.clj"))' -M xtdb2
end
