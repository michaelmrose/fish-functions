# Defined in /home/michael/.config/fish/buffer/cljgraph.fish @ line 1
function cljgraph
	find src -type f|xargs lein with-profile +clj-usage-graph run -m com.gfredericks.clj-usage-graph/var-graph| dot -Tsvg -o g.svg
    and inkview g.svg
end
