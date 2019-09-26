537
((3) 0 () 1 ((q lib "healer-lib/examples-lib.rkt")) () (h ! (equal) ((c form c (c (? . 0) q define-enemies-examples)) q (2006 . 10)) ((c form c (c (? . 0) q define-food-examples)) q (1224 . 7)) ((c def c (c (? . 0) q described-sprite?)) q (988 . 5)) ((c form c (c (? . 0) q start)) q (0 . 2)) ((c def c (c (? . 0) q generic-start)) q (68 . 17)) ((c form c (c (? . 0) q extract-stimuli)) q (2561 . 2)) ((c form c (c (? . 0) q define-friends-examples)) q (1525 . 9)) ((c def c (c (? . 0) q add-ratchet-output-to-response)) q (2599 . 3))))
syntax
(start avatar (food ...) (friends ...) (enemies ...))
procedure
(generic-start [#:bg bg                               
                #:avatar-sprite avatar                
                #:starvation-rate starvation-rate     
                #:food-sprites fs                     
                #:npc-sprites ns                      
                #:enemy-sprites es                    
                #:score-prefix score                  
                #:instructions instructions])     -> void?
  bg : bg? = (custom-bg #:rows 2 #:columns 2)
  avatar : described-sprite? = (list question-mark-icon)
  starvation-rate : number? = 25
  fs : (list-of described-sprite?) = '()
  ns : (list-of described-sprite?) = '()
  es : (list-of described-sprite?) = '()
  score : string? = "Friends Healed"
  instructions : entity? = (make-instructions default-text)
value
described-sprite? : (or/c sprite?
                          (list sprite? color-string?)
                          (list sprite? number?)
                          (list sprite? color-string? number?))
syntax
(define-food-examples
             #:lang lang
             #:start START
             #:avatars (AVATAR-A AVATAR-B AVATAR-C AVATAR-D)
             #:foods   (FOOD-A FOOD-B FOOD-C FOOD-D)
             #:rand  RAND)
syntax
(define-friends-examples
             #:lang lang
             #:start START
             #:avatars (AVATAR-A AVATAR-B AVATAR-C AVATAR-D)
             #:foods   (FOOD-A   FOOD-B   FOOD-C   FOOD-D)
             #:friends (FRIEND-A   FRIEND-B   FRIEND-C   FRIEND-D)
             #:colors  (COLOR-A COLOR-B COLOR-C COLOR-D)
             #:rand  RAND)
syntax
(define-enemies-examples
             #:lang lang
             #:start START
             #:avatars (AVATAR-A AVATAR-B AVATAR-C AVATAR-D)
             #:foods   (FOOD-A FOOD-B FOOD-C FOOD-D)
             #:friends (FRIEND-A   FRIEND-B   FRIEND-C   FRIEND-D)
             #:colors  (COLOR-A COLOR-B COLOR-C COLOR-D)
             #:enemies (ENEMY-A   ENEMY-B   ENEMY-C   ENEMY-D)
             #:rand  RAND)
syntax
(extract-stimuli module-path)
procedure
(add-ratchet-output-to-response k) -> kata?
  k : kata?
