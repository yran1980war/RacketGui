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
       (stretchable-width #t)
       [label "первое окно"]))

(define cnt 0)

(new button%
     [parent frame]
     [label "нажать"]
     [callback
      (lambda (button event)
        (set! cnt (+ 1 cnt))
        (send msg set-label (format "значение cnt = ~a" cnt)))])

(new button%
     [parent frame]
     [label "нажать"]
     [callback
      (lambda (button event)
        (set! cnt (- cnt 1 ))
        (send msg set-label (format "значение cnt = ~a" cnt)))])

(send frame show #t)