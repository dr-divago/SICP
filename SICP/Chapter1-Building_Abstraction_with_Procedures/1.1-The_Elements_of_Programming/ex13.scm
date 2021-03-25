#lang planet neil/sicp
(define (max-2 x y)
  (if (>= x y) x y))

(define (max-3 x y z)
  (if (>= (max-2 x y) z) (max-2 x y) z))

(define (min-2 x y)
  (if (<= x y) x y))

(define (sqr-my x y) (
  + (* x x) (* y y)))

(define (second-max x y z)
( min-2 ( min-2 ( max-2 x y) (max-2 y z)) (max-2 x z)))


(define (square-large x y z) (
  cond( (= (second-max x y z) x ) (sqr-my x (max-3 x y z)))
      ( (= (second-max x y z) y ) (sqr-my y (max-3 x y z)))
      ( (= (second-max x y z) z ) (sqr-my z (max-3 x y z)))                                             
   ))

(square-large 1 2 3)
(square-large 1 3 2)
(square-large 3 1 2)
(square-large 2 1 3)
(square-large 3 2 1)
(square-large 2 3 1)
(square-large 1 1 1)
(square-large 1 1 2)
(square-large 1 4 3)

