#lang racket

(require ratchet)

(define-ratchet-lang healer-animal-foods/main
  (provide 
    (all-from-out healer-fish-lib/start)
    (all-from-out healer-lib)
    (all-from-out racket) 
    (all-from-out animal-assets))

  (require racket animal-assets 
           healer-lib
           healer-lib/icons
           (only-in healer-fish-lib/start start)
           (rename-in healer-fish-lib/rand [rand-fish rand])
           (only-in survival draw-sprite))

  #:wrapper launch-game-engine

  [start     = play-icon]

  [fish          f (draw-sprite fish)]
  [green-fish    g (draw-sprite green-fish)]

  [jellyfish     j (draw-sprite jellyfish)]
  [yellow-fish   y (draw-sprite yellow-fish)]
  [starfish      s (draw-sprite starfish)]
  [crab          c (draw-sprite crab)]

  
  [rand     ? question-icon])


