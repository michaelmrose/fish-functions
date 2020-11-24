# Defined in /usr/home/michael/.config/fish/buffer/shadow-project.fish @ line 1
function shadow-project
		set template ~/proj/clojure/webdev/shadow-cljs.edn
		npm init -y
		npm install --save-dev shadow-cljs
		shadow-cljs init
		cp $template (pwd)
		sd NAME (basename (pwd)) shadow-cljs.edn
end
