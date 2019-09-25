#lang racket

(require ratchet)

(define-ratchet-lang 
  (provide 
    (all-from-out racket) 
    (all-from-out healer-farm-lib)
    (all-from-out animal-assets))

  (require racket 
           animal-assets 
           healer-farm-lib)

  #:wrapper launch-game-engine

  [start    = play-icon]

  [llama    l (draw-sprite llama)]
  [horse    h (draw-sprite horse)]
  [cow      c (draw-sprite cow)]
  [rabbit   r (draw-sprite rabbit)]
  [sheep    s (draw-sprite sheep)]
  [dog      d (draw-sprite dog)]
  [wolf     w (draw-sprite wolf)]

  [apple    a (draw-sprite apple)]
  [grapes   g (draw-sprite grapes)]
  [kiwi     k (draw-sprite kiwi)]
  [pepper   p (draw-sprite pepper)]

  [copper   x (draw-sprite copper)]
  [silver   y (draw-sprite silver)]
  [gold     z (draw-sprite gold)]

  [rand     ? question-icon])

