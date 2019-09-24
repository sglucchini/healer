#lang racket

(require healer-lib/examples-lib)

;TODO: Need "coin" examples
#;
(make-food-examples 
  #:lang healer-zoo-foods
  #:start start
  #:avatars (monkey elephant hippo kangaroo)
  #:foods   (apple banana fish grapes)
  #:rand rand)
