.PHONY: install npm sandwich

install: npm

npm:
	npm config set sign-git-tag true

sandwich:
	@[ $$(whoami) = "root" ] && (echo "ok"; echo "ham" > ~/sandwich) || (echo "make it yourself" && exit 13)
