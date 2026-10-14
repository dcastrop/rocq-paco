# Examples and tutorial, compiled against the library in ../src.
# Not installed. Needs rocq-stdlib.

EXAMPLES := examples.v tutorial.v example_upto.v
ROCQFLAGS := -Q ../src Paco -Q . PacoExamples

.PHONY: all clean

all: $(EXAMPLES:.v=.vo)

$(EXAMPLES:.v=.vo): ../src/paco.vo

%.vo: %.v
	rocq compile $(ROCQFLAGS) $<

clean:
	rm -f *.vo *.vok *.vos *.glob .*.aux
