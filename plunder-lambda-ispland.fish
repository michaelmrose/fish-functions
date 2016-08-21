function plunder-lambda-ispland
	set episodes (curl 'https://lambdaisland.com/episodes' | pup 'a attr{href}' | grep '/episodes/.*' | sort -u | cut -d '/' -f3-)
  for episode in $episodes
    set url https://lambdaisland.com/episodes/$episode
    set urls $urls $url
  end
  p $urls
end
