run:
	cd jekyll && jekyll serve
publish:
	cd jekyll && jekyll build
	cp -rf jekyll/_site/* thesolarprincess.github.io
	cd thesolarprincess.github.io && dot_clean . && git add --all && git commit -m "autocommit" && git push
