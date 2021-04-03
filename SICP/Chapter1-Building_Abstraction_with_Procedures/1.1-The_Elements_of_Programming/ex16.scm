#lang planet neil/sicp
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (-(square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

;It will overflow. `new-if` use [[applicative-order-evaluation]] not [[normal-order-evaluation]]. From #sicp book :
; "Lisp uses applicative-order evaluation, partly because of the additional efficiency obtained from avoiding multiple evaluations of expressions
;such as those illustrated with (+ 5 1) and (\* 5 2) above and, more significantly,
;because normal-order evaluation becomes much more complicated to deal with when we leave the realm of procedures that can be modeled by substitution."

;Because it is applicative-order-evaluation all the argument to new-if have to be evaluated before the new-if is called making the recursive call infinite  