function ebook-open
    zathura $argv &
    java -jar ~/proj/clojure/rdr/target/rdr-0.1.0-SNAPSHOT-standalone.jar -a $argv &
end
