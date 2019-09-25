#lang racket

(require healer-lib/examples-lib)

(define-enemies-examples 
  #:lang healer-farm-enemies
  #:start start
  #:avatars (goat rabbit sheep turkey)
  #:foods   (broccoli mushroom onion kiwi)
  #:friends (cat horse dog goat)
  #:colors  (yellow orange red green)
  #:enemies (goat rabbit horse cat)
  #:rand rand)
