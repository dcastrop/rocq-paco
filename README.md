# rocq-paco: Paco for Rocq 9.2+

This is a port of [snu-sf/paco](https://github.com/snu-sf/paco) (v4.2.3) to the Rocq Prover 9.2 and later.
It depends only on `rocq-core`, builds without warnings, and keeps the logical path `Paco`,
so existing `From Paco Require Import paco.` lines work unchanged. See `CHANGES` for what differs
from upstream.

# Paco: Library for Parametric Coinduction

[![License](https://img.shields.io/badge/license-BSD3-blue.svg)](https://github.com/snu-sf/paco)

Paco is a Coq library for parametric coinduction.  For more information, please see:

- Chung-Kil Hur, Georg Neis, Derek Dreyer and Viktor Vafeiadis.  [The power of parameterization in coinductive proof](https://dl.acm.org/citation.cfm?doid=2429069.2429093).  POPL 2013.
- Yannick Zakowski, Paul He, Chung-Kil Hur and Steve Zdancewic.  [An equational theory for weak bisimulation via generalized parameterized coinduction](https://dl.acm.org/doi/10.1145/3372885.3373813).  CPP 2020.

Paco also supports upto techniques using "companion".  See:
- Damien Pous.  [Coinduction All the Way Up](https://dl.acm.org/citation.cfm?id=2934564).  LICS 2016.

Minki Cho refactored the implementation to speed up the compilation time.

This port requires Rocq 9.2 or later (it uses the `Abbreviation` command introduced in 9.2).
For older Coq versions, use upstream `coq-paco`.


## Installation

```bash
# pin into the current opam switch (conflicts with coq-paco, which it replaces)
opam pin add rocq-paco <path-or-git-url-of-this-repo>

# from source
make && make install     # library files
make test                # compile the examples (needs rocq-stdlib)
```

## Examples

See [`/examples/examples.v`](/examples/examples.v) and [`/examples/tutorial.v`](/examples/tutorial.v) for examples.
