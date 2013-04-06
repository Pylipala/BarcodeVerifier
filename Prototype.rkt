#lang racket/gui

(define img (make-object bitmap% 1 1))

(send img load-file "/Users/Pylipala/Pictures/duanyu.png")

(define frm (new frame% [label "Barcode Verifier"]))

(define img-pnl (new canvas% 
                     [parent frm]
                     [paint-callback
                      (lambda (canvas dc)
                        (send dc draw-bitmap img 0 0))]))

(send frm show #t)
