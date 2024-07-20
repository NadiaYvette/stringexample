# StringExample

StringExample is a minimal example of unexpected behaviour surrounding
string gaps in Haskell. It demonstrates oddities involving quoted
characters immediately following the ending delimiter signalling the
resumption of the string text.

## Reproduction

1. **Prerequisites**:
   - cabal
   - ghc of uncertain minimal version, tested with 8.10 onward.
   - git

2. **Clone the Repository**:
   ```sh ksh zsh etc.
   git clone git@github.com:NadiaYvette/StringExample.git

