# Ormolu GitHub Action

Format Haskell code with [Ormolu](https://github.com/tweag/ormolu) in your GitHub Actions workflows.

## Usage

### Format all Haskell files

```yaml
- uses: nikita-volkov/ormolu@v3
```

This will automatically find and format all `.hs` files in your repository, excluding `dist-newstyle` and `.git` directories.

### Format specific directories

```yaml
- uses: nikita-volkov/ormolu@v3
  with:
    dirs:
      src
      lib
```

## Inputs

### `dirs`

**Optional** Space-separated list of dirs to format.

If not specified, all `.hs` files will be formatted (excluding `dist-newstyle` and `.git` directories)

## Example Workflow

```yaml
name: Format
on: [push, pull_request]

jobs:
  ormolu:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: nikita-volkov/ormolu@v3
```
