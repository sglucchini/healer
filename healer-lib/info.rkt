#lang info

(define scribblings '(("scribblings/manual.scrbl" (multi-page))))

(define deps '(
  "game-engine"
  "game-engine-demos-common"
  "ratchet"))

(define compile-omit-paths '(
  "examples.rkt"))

(define test-include-paths '( "examples/*.rkt"))
