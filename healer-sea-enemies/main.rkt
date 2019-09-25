#lang racket

(require ratchet)

(define-ratchet-lang 
  (provide 
    (all-from-out racket) 
    (all-from-out healer-zoo-lib)
    (all-from-out animal-assets))

  (require racket 
           animal-assets 
           healer-zoo-lib 
           (only-in 2htdp/image square))

  #:wrapper launch-game-engine

  [start       x play-icon]

  [shark       s (draw-sprite shark)]
  [ghost-fish  g (draw-sprite ghost-fish)]
  [red-fish    r (draw-sprite red-fish)]
  [orange-fish f (draw-sprite orange-fish)]
  [jellyfish   j (draw-sprite jellyfish)]
  [octopus     o (draw-sprite octopus)]
  [crab        c (draw-sprite crab)]

  [potato      p (draw-sprite potato)]
  [strawberry  y (draw-sprite strawberry)]
  [apple       a (draw-sprite apple)]
  [cherries    i (draw-sprite cherries)]
  [banana      b (draw-sprite banana)]
  [kiwi        k (draw-sprite kiwi)]
  [tomato      t (draw-sprite tomato)]
  [mushroom    m (draw-sprite mushroom)]

  [red    R (square 32 'solid 'red)]
  [orange O (square 32 'solid 'orange)]
  [yellow Y (square 32 'solid 'yellow)]
  [green  G (square 32 'solid 'green)]
  [blue   B (square 32 'solid 'blue)]
  [purple P (square 32 'solid 'purple)]


  [rand        ? question-icon]

  )