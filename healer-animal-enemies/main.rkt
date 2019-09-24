#lang racket

;This one is exactly the same as healer-animal-friends.
;  If it needs to diverge, replace this file with a (define-ratchet-lang ...) block.  See, for example, healer-animal-friends.rkt

(provide (all-from-out healer-animal-friends))
(require healer-animal-friends)

(module reader syntax/module-reader
  healer-animal-friends/main)

(module ratchet racket
  (provide 
    (all-from-out (submod healer-animal-friends/main ratchet)))
  (require (submod healer-animal-friends/main ratchet)))

