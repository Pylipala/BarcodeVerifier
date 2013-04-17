#lang racket/gui

(define img (make-object bitmap% 1 1))

(send img load-file "/Users/Pylipala/Pictures/duanyu.png")

(define frm (new frame% 
                 [label "Barcode Verifier"]
                 [width 800]
                 [height 600]
                 [alignment '(center center)]))

(define LinearGraph%
  (class canvas%
    (field (values #()))
    
           

(define img-pnl (new canvas% 
                     [parent frm]
                     [paint-callback
                      (lambda (canvas dc)
                        (send dc draw-bitmap img 0 0))]))


(send frm show #t)
