#lang planet neil/sicp
(define (square guess) 
   (* guess guess)) 
  
;cube root improve formula used as is 
(define (improve guess x) 
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)) 
 
  
 ;iterates until guess and next guess are equal, 
 ;automatically produces answer to limit of system precision 
 (define (good-enough? guess x) 
   (= (improve guess x) guess)) 
  
 (define (3rt-iter guess x) 
   (if (good-enough? guess x) 
       guess 
       (3rt-iter (improve guess x) x))) 
  
 (define (3root x) 
   (3rt-iter 1.1 x))
(3root 5)