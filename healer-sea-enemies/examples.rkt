#lang racket

(require healer-lib/examples-lib)

(define-enemies-examples
  #:lang healer-sea-enemies
  #:start start
  #:avatars (shark ghost-fish red-fish orange-fish)
  #:foods   (apple banana fish grapes)
  #:friends (jellyfish octopus crab shark)
  #:colors  (yellow orange red green)
  #:enemies (shark ghost-fish red-fish orange-fish)
  #:rand rand)
