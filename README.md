# learning-sicp

## environment configuration

* install racket `brew install --cask racket`
* install racket-langserver `raco pkg install racket-langserver`
* install racket test-coverage tool `raco pkg install cover`
* install racket vscode extension [Magic Racket](https://marketplace.visualstudio.com/items?itemName=evzen-wybitul.magic-racket)

## usage

run main script

```sh
racket src/lib.rkt
racket src/main.rkt
```

run unit test

```sh
raco test src/lib.rkt
raco test src/main.rkt
# or run all test by
raco test src
```

run test coverage

```sh
raco cover src
```
