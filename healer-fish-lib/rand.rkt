#lang racket

(provide rand-fish)

(require animal-assets)

(define (rand-fish)
  (first 
    (shuffle 
      (list 
        ;Add whatever makes sense in this lang...
        green-fish
        yellow-fish
        jellyfish))))

