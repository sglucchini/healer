#lang racket

(require healer-lib/examples-lib)

(make-enemy-examples 
  #:lang healer-zoo-enemy
  #:start start
  #:avatars (monkey elephant hippo kangaroo)
  #:foods   (apple banana fish grapes)
  #:friends (penguin zookeeper monkey elephant)
  #:colors  (yellow orange red green)
  #:enemies (monkey elephant hippo kangaroo)
  #:rand rand)
