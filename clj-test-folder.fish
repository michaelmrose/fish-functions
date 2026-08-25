function clj-test-folder
    clj -M:test (for file in *.clj *.cljc; echo -- -n; nsof $file; end)
end
