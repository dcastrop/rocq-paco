ROCQMODULE   := Paco
ROCQTHEORIES := $(sort $(wildcard *.v))
ROCQMAKEFILE := Makefile.rocq

.PHONY: all quick install uninstall clean doc install-doc

all: $(ROCQMAKEFILE)
	$(MAKE) -f $(ROCQMAKEFILE) all

quick: $(ROCQMAKEFILE)
	$(MAKE) -f $(ROCQMAKEFILE) quick

install: $(ROCQMAKEFILE)
	$(MAKE) -f $(ROCQMAKEFILE) install

uninstall: $(ROCQMAKEFILE)
	$(MAKE) -f $(ROCQMAKEFILE) uninstall

$(ROCQMAKEFILE): Makefile $(ROCQTHEORIES)
	(echo "-Q . $(ROCQMODULE)"; \
	 echo $(ROCQTHEORIES)) > _RocqProject
	rocq makefile -f _RocqProject -o $(ROCQMAKEFILE)

doc: $(ROCQMAKEFILE)
	$(MAKE) -f $(ROCQMAKEFILE) html
	cp index.html main.css html

install-doc: doc
	$(MAKE) -f $(ROCQMAKEFILE) install-doc

clean:
	if [ -f $(ROCQMAKEFILE) ]; then $(MAKE) -f $(ROCQMAKEFILE) cleanall; fi
	rm -f _RocqProject $(ROCQMAKEFILE) $(ROCQMAKEFILE).conf .$(ROCQMAKEFILE).d
