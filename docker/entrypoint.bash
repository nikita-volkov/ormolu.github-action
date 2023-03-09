#!/bin/bash

echo output="$(ormolu -ci $(find . -name \"*.hs\" -not -path \"./dist-newstyle/*\" -not -path \"./.git/*\"))" >> $GITHUB_OUTPUT
