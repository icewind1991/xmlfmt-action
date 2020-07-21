# XML Format Action

This action validates the formatting of xml files using `xmllint --format`.

## Inputs

### `xml-file`

**Required** The name of the source (.xml) file.

## Example usage

```yml
name: Check formatting

on: [push]

jobs:
  xml-linters:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@master
    - name: Lint info.xml
      uses: icewind1991/xmlfmt-action@v1
      with:
        xml-file: ./appinfo/info.xml
```
