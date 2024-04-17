#lang racket

(provide nest
         nest-list)

(define (nest f x n)
  (if (<= n 0) x
      (nest f (f x) (- n 1))))

(define (nest-list-0 f x n l)
  (if (<= n 0) (reverse (cons x l))
      (nest-list-0 f (f x) (- n 1) (cons x l))))

(define (nest-list f x n) (nest-list-0 f x n '()))
