function clj-test-folder
    for f in *
          clj -M:test -n (nsof $f)
      end
end
