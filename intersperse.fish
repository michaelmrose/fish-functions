function intersperse
    # 1. Initialize an empty local variable so it doesn't leak between runs
    set -l acc

    # 2. Your original logic: prepend the first argument to EVERY subsequent argument
    for word in $argv[2..-1]
        set acc $acc $argv[1] $word
    end

    # 3. Print each item on a new line.
    # This is the secret to making (intersperse ...) work in fish!
    printf "%s\n" $acc
end
