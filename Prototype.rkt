#lang racket

(require racket/gui)
(require racket/class)

(define img (make-object bitmap% 1 1))

(send img load-file "/Users/Pylipala/Pictures/duanyu.png")

(define frm (new frame% 
                 [label "Barcode Verifier"]
                 [width 800]
                 [height 600]
                 [alignment '(center center)]))

(define LinearGraph%
  (class canvas%
    (super-new)
    (field (values #()))
    (inherit get-dc)
    (define (on-paint)
                     (let ([dc (get-dc this)])
                       (send dc draw-line 10 10 100 100)))
    (override on-paint)))
                       
           

(define img-pnl (new canvas% 
                     [parent frm]
                     [paint-callback
                      (lambda (canvas dc)
                        (send dc draw-bitmap img 0 0))]))


(send frm show #t)
