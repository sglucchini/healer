#lang racket

(provide start)

(require healer-lib/start
         (only-in animal-assets question-icon))

(define (start-f
          (avatar-sprite (list question-icon)) 
          (food-sprites '()) 
          (coin-sprites '()) 
          (enemy-sprites '()))

  (displayln "Zoo game starting!")

  (generic-start-f 
    #:bg               (custom-bg #:rows 2 #:columns 2)
    #:avatar-sprite    avatar-sprite
    #:food-sprites     food-sprites
    #:coin-sprites     coin-sprites
    #:enemy-sprites    enemy-sprites
    #:score-prefix     "Score"
    #:instructions 
    (make-instructions "ARROW KEYS to move"
                       "SPACE to eat food and collect coins"
                       "ENTER to close dialogs"
                       "I to open these instructions"
                       "M to open and close the map")))

(bind-start-to start-f)
