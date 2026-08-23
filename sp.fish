function sp
    r
    fd -t directory "$argv" |fzf|each cd
end
