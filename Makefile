.PHONY: build
build:
	mkdir -p build
	cp -r .pandoc/* ./build/
	cp *.md ./build/
	cd build &&	pandocomatic -i 00_index.md -o result.pdf --data-dir data-dir/ -c pandocomatic.yml

install:
	gem install --user-install pandocomatic
	wget https://github.com/jgm/pandoc/releases/download/3.1.9/pandoc-3.1.9-1-amd64.deb -O /tmp/pandoc-3.1.9-1-amd64.deb
	sudo apt install -f /tmp/pandoc-3.1.9-1-amd64.deb
	sudo apt install texlive-full
