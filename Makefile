.PHONY: clean

all:
	mkdir -p dist/
	cp -rp debian/ dist/
	cd dist; dpkg-buildpackage -b -us -uc

clean:
	rm -rf dist/ *.deb *.changes
