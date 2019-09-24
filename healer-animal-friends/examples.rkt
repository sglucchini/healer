#lang racket

(require healer-lib/examples-lib)

(make-friend-examples 
  #:lang healer-animal-friends
  #:start start
  #:avatars (goat rabbit sheep turkey)
  #:foods   (broccoli mushroom onion kiwi)
  #:friends (cat horse dog goat)
  #:colors  (purple red green blue)
  #:rand rand)
