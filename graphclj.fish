# Defined in /home/michael/.config/fish/buffer/graphclj.fish @ line 1
function graphclj
    find src -type f|xargs lein with-profile +clj-usage-graph run -m com.gfredericks.clj-usage-graph/var-graph| dot -Tsvg -o g.svg

    firefox g.xvg
end
