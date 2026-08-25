function namespaces
    fd -e clj --full-path (find-clj-project-root)|g test|each head -1|cut -c 5-
end
