#lang planet neil/sicp
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x) 
   (= (improve guess x) guess)) 

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.0001)