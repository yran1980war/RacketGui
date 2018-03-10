#lang racket
 (require racket/gui/base)
(define frame
(new frame%
  [label "Example"]
(width 500)
(height 500)))
(define msg
 (new message%
   [parent frame]
[label "первое окно"]))
(new button% [parent frame]
             [label "нажать"]
[callback (lambda (button event)
             (send msg set-label "ок"))])
(new button% [parent frame]
             [label "нажать"]
             [callback (lambda (button event) (sleep 5))])

(send frame show #t)