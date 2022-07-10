function url-to-org-mode-on-clip
	readable -q (clip -o|quote)| pandoc --from=html --to=org |clipboard
end
