.PHONY: install npm mac emacs-mac sandwich

install: npm

npm:
	npm config set sign-git-tag true

mac:
	emacs-mac

emacs-mac:
	brew tap railwaycat/emacsmacport
	brew install emacs-mac --with-natural-title-bar
	defaults write org.gnu.Emacs HideDocumentIcon YES
	defaults write org.gnu.Emacs TransparentTitleBar LIGHT

sandwich:
	@[ $$(whoami) = "root" ] && (echo "ok"; echo "ham" > ~/sandwich) || (echo "make it yourself" && exit 13)
