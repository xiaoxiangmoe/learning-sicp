#lang typed/racket
(require
  ; import struct pt only, include pt, pt-x and pt-y
  (only-in "./lib.rkt" pt pt-x pt-y distance))

(module+ main
  (displayln "Hello, World!"))
