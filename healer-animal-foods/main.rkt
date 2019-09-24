#lang racket

(require ratchet)

(define-ratchet-lang 
  (provide 
    (all-from-out racket) 
    (all-from-out healer-animal-lib)
    (all-from-out animal-assets))

  (require racket 
           animal-assets 
           healer-animal-lib)

  #:wrapper launch-game-engine

    [start    = play-icon]
    
    ;Animals
    [cat      c (draw-sprite cat)]
    [dog      d (draw-sprite dog)]
    [horse    h (draw-sprite horse)]
    [rabbit   r (draw-sprite rabbit)]

    ;Foods
    [apple      a (draw-sprite apple)]
    [kiwi       k (draw-sprite kiwi)]
    [onion      o (draw-sprite onion)]
    [potato     p (draw-sprite potato)]
    [tomato     t (draw-sprite tomato)]

    ;Other
    [rand     ? question-icon]  

  )
