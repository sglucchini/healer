#lang racket

(provide start start-npc)

(require healer-lib 
         animal-assets
         syntax/parse/define)


(define-syntax (start stx)
  (syntax-parse stx
    [(start-sea) #'(start-sea-f) ]
    [(start-sea avatar-sprite (things ...) ...)
     #'(start-sea-f avatar-sprite
                    (list things ...)
                    ...)]))

(define (start-sea-f 
          (avatar-sprite question-icon) 
          (food-sprites '()) 
          (enemy-sprites '()) 
          (coin-sprites '()))
  (define avatar (make-avatar avatar-sprite))
  (define food-list
    (map make-food food-sprites))
  (define enemy-list
    (map make-enemy enemy-sprites))
  (define coin-list
    (map make-coin coin-sprites))

  (define instructions
    (make-instructions "ARROW KEYS to move"
                       "SPACE to eat food"
                       "ENTER to close dialogs"
                       "I to open these instructions"
                       "M to open and close the map"))

  (survival-game #:bg           (custom-bg #:image sea-bg
                                           #:rows 2
                                           #:columns 2)
                 #:sky          #f
                 #:avatar       avatar
                 #:food-list    food-list
                 #:enemy-list   enemy-list
                 #:score-prefix "Score"
                 #:instructions instructions) )




(define-syntax (start-npc stx)
  (syntax-parse stx
    [(start-sea) #'(start-sea-npc-f) ]
    [(start-sea avatar-sprite (things ...) ...)
     #'(start-sea-npc-f avatar-sprite
                        (list things ...)
                        ...)]))

(define (start-sea-npc-f
          (avatar-sprite question-icon) 
          (npc-sprites '()) 
          (food-sprites '()) 
          (enemy-sprites '())
          (coin-sprites '()))

  (define avatar
    (make-healing-avatar avatar-sprite))
  (define npc-list
    (map make-hurt-animal npc-sprites))
  (define food-list
    (map make-food food-sprites))
  (define enemy-list
    (map make-enemy enemy-sprites ))
  (define coin-list
    (map make-coin coin-sprites))

  (define instructions
    (make-instructions "ARROW KEYS to move"
                       "SPACE to eat food and talk"
                       "ENTER to close dialogs"
                       "H to heal"
                       "I to open these instructions"
                       "M to open and close the map"))

  (survival-game #:bg           (custom-bg #:image sea-bg
                                           #:rows 2
                                           #:columns 2)
                 #:sky          #f
                 #:starvation-rate -1000
                 #:avatar       avatar
                 #:npc-list     npc-list
                 #:food-list    food-list
                 #:enemy-list   enemy-list
                 #:coin-list    coin-list
                 #:score-prefix "Animals Healed"
                 #:instructions instructions) )


