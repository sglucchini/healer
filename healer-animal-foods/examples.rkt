#lang racket

(require healer-lib/examples-lib)

(make-food-examples 
  #:lang healer-animal-foods
  #:start start
  #:avatars (cat dog horse rabbit)
  #:foods   (apple kiwi potato rabbit)
  #:rand rand)
