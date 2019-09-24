#lang racket

(provide start)

(require healer-lib/start
         (only-in animal-assets question-icon sea-bg))

(define (start-f
          (avatar-sprite (list question-icon)) 
          (npc-sprites '()) 
          (food-sprites '()) 
          (coin-sprites '()) 
          (enemy-sprites '()))

  (displayln "Sea game starting!")

  (generic-start-f 
    #:bg               (custom-bg #:image sea-bg
                                  #:rows 2 #:columns 2)
    #:starvation-rate  -1000
    #:avatar-sprite    avatar-sprite
    #:food-sprites     food-sprites
    #:coin-sprites     coin-sprites
    #:enemy-sprites    enemy-sprites
    #:npc-sprites      npc-sprites
    #:score-prefix     "Animals Healed"
    #:instructions 
    (make-instructions "ARROW KEYS to move"
                       "SPACE to eat food and talk"
                       "ENTER to close dialogs"
                       "H to heal"
                       "I to open these instructions"
                       "M to open and close the map")))

(bind-start-to start-f)
