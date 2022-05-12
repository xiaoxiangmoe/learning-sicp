#lang typed/racket

(provide
 distance
 pt-to-string
 (struct-out pt))

(module+ test (require typed/rackunit))

(struct pt ([x : Real] [y : Real]))

(: pt-to-string (-> pt String))
(define (pt-to-string p) (string-append "struct pt: x=" (number->string (pt-x p)) ", y=" (number->string (pt-y p)) "."))

(: distance (-> pt pt Real))
(define (distance p1 p2)
  (sqrt (+ (sqr (- (pt-x p2) (pt-x p1)))
           (sqr (- (pt-y p2) (pt-y p1))))))

(module+ test
  (define pt0 (pt 4 3))
  (define pt1 (pt 1 -1))
  (test-case "distance works"
             (check-eq? 5
                        (distance pt0 pt1))))

(module+ main
  (displayln "Hello, lib!"))
