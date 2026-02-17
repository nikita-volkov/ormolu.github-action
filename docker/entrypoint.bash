#!/bin/bash -e

if [ -n "$INPUT_DIRS" ]; then
  # Find .hs files in the specified directories
  ormolu -ci $(find $INPUT_DIRS -name "*.hs" -not -path "./dist-newstyle/*" -not -path "./.git/*")
else
  # Fall back to finding all .hs files
  ormolu -ci $(find . -name "*.hs" -not -path "./dist-newstyle/*" -not -path "./.git/*")
fi
