#lang racket

(require ratchet)

(define-ratchet-lang 
  (provide 
    (all-from-out racket) 
    (all-from-out animal-assets)
    (all-from-out healer-animal-lib))

  (require racket animal-assets 
           healer-animal-lib
           (only-in 2htdp/image square))

  #:wrapper launch-game-engine

  [start    = play-icon]

  ;Animals
  [cat      c (draw-sprite cat)]
  [dog      d (draw-sprite dog)]
  [goat     g (draw-sprite goat)]
  [horse    h (draw-sprite horse)]
  [rabbit   r (draw-sprite rabbit)]
  [sheep    s (draw-sprite sheep)]
  [turkey   t (draw-sprite turkey)]

  ;Foods
  [apple     a (draw-sprite apple)]
  [broccoli  b (draw-sprite broccoli)]
  [kiwi      k (draw-sprite kiwi)]
  [mushroom  m (draw-sprite mushroom)]
  [onion     o (draw-sprite onion)]
  [potato    p (draw-sprite potato)]

  ;Colors
  [red            R (square 32 'solid 'red)]
  [orange         O (square 32 'solid 'orange)]
  [yellow         Y (square 32 'solid 'yellow)]
  [green          G (square 32 'solid 'green)]
  [blue           B (square 32 'solid 'blue)]
  [purple         P (square 32 'solid 'purple)]

  ;Other
  [rand     ? question-icon])


