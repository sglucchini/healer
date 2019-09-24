#lang racket

(provide rand)

(require animal-assets)

(define (rand)
  (first 
    (shuffle 
      (list 
        ;Add whatever makes sense in this lang...
        green-fish
        yellow-fish
        jellyfish))))

