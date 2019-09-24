#lang racket

(provide rand)

(require animal-assets)

(define (rand)
  (first (shuffle (list cat dog goat horse rabbit sheep turkey
                                     apple broccoli kiwi mushroom onion potato))))

