function ipof
    dig $argv a|g "$argv.*[0-9]"|choose 4
end
