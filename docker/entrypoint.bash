#!/bin/bash -e

ormolu -ci $(find . -name "*.hs" -not -path "./dist-newstyle/*" -not -path "./.git/*")
