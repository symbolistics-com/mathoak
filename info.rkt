#lang info
(define collection "MathOak")
(define version "0.0.1")
(define pkg-desc
  "MathOak, tools and library for practicle mathematics.")
(define scribblings '(("mathoak.scrbl")))
(define pkg-authors '(Symbolistics.com Killian Josh))
(define license '(Apache-2.0 OR MIT))
(define deps '("base" "srfi"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
