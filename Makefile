.PHONY: all test install uninstall clean doc

all:
	$(MAKE) -C src all

test: all
	$(MAKE) -C examples all

install:
	$(MAKE) -C src install

uninstall:
	$(MAKE) -C src uninstall

doc:
	$(MAKE) -C src doc

clean:
	$(MAKE) -C src clean
	$(MAKE) -C examples clean
