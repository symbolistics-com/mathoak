#lang racket

(provide total sum)

(define (total numbers)
  (apply + numbers))

(define sum total)
