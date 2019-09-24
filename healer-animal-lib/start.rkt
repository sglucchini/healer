#lang racket

(provide start)

(require healer-lib
         animal-assets
         syntax/parse/define)

(define-syntax (start stx)
  (syntax-parse stx
    [(_) #'(start-f) ]
    [(_ avatar-sprite (things ...) ...)
     #'(start-f (listify avatar-sprite)
                (list (listify things) ...)
                ...)]))

(define (start-f
          (avatar-sprite (list question-icon)) 
          (food-sprites '()) 
          (npc-sprites '()) 
          (enemy-sprites '()))

  (define avatar
    (apply make-healing-avatar avatar-sprite))
  (define food-list
    (map (curry apply make-food) food-sprites))
  (define npc-list
    (map (curry apply make-hurt-animal) npc-sprites))
  (define enemy-list
    (map (curry apply make-enemy) enemy-sprites))

  (define instructions
    (make-instructions "ARROW KEYS to move"
                       "SPACE to eat food and talk"
                       "ENTER to close dialogs"
                       "H to heal animals"
                       "I to open these instructions"
                       "M to open and close the map"))

  (survival-game #:bg           (custom-bg #:rows 2
                                           #:columns 2)
                 #:sky          #f
                 #:starvation-rate 25
                 #:avatar        avatar
                 #:food-list     food-list
                 #:npc-list      npc-list
                 #:enemy-list    enemy-list
                 #:score-prefix "Animals Healed"
                 #:instructions instructions))


