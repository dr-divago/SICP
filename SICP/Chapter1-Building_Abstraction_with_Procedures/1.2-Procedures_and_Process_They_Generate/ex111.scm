#lang planet neil/sicp
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 2))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))


