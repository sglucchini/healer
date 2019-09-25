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

  [llama    l (draw-sprite llama)]
  [cow      c (draw-sprite cow)]
  [rabbit   r (draw-sprite rabbit)]
  [sheep    s (draw-sprite sheep)]

  [apple    a (draw-sprite apple)]
  [banana   b (draw-sprite banana)]
  [potato   p (draw-sprite potato)]
  [kiwi     k (draw-sprite kiwi)]

  [copper   x (draw-sprite copper)]
  [silver   y (draw-sprite silver)]
  [gold     z (draw-sprite gold)]

  [rand     ? question-icon]

  )
