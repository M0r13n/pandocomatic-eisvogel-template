.PHONY: build
build:
	mkdir -p build
	cp -r .pandoc/* ./build/
	cp -r doc slides img ./build/
	cd build &&	pandocomatic -i doc/00_index.md -o result.pdf --data-dir data-dir/ -c pandocomatic.yml
	cd build &&	pandocomatic -i slides/demo.md -o demo.pdf --data-dir data-dir/ -c pandocomatic.yml


clean:
	rm -rf build

install:
	gem install --user-install pandocomatic
	wget https://github.com/jgm/pandoc/releases/download/3.1.9/pandoc-3.1.9-1-amd64.deb -O /tmp/pandoc-3.1.9-1-amd64.deb
	sudo apt install -f /tmp/pandoc-3.1.9-1-amd64.deb
	sudo apt install texlive-full
