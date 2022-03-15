.PHONY: install npm kitty mac homebrew emacs-mac sandwich

install: npm

npm:
	npm config set sign-git-tag true

kitty:
	brew install --cask kitty

mac:
	homebrew kitty emacs-mac

homebrew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | ruby

emacs-mac:
	brew tap railwaycat/emacsmacport
	brew install emacs-mac --with-natural-title-bar
	defaults write org.gnu.Emacs HideDocumentIcon YES
	defaults write org.gnu.Emacs TransparentTitleBar LIGHT

sandwich:
	@[ $$(whoami) = "root" ] && (echo "ok"; echo "ham" > ~/sandwich) || (echo "make it yourself" && exit 13)
