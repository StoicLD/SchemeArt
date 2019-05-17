;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its inner meaning.>

(define (rgb-new r g b) (rgb (/ r 255) (/ g 255) (/ b 255)))

(define (for-large i step limit) 
                (cond 
                    ((> i limit) ())
                    (else (for-large (+ i step) step limit)))
)

(define (cube x) (* x (* x x)))

(define (for-out y limitY stepY)
        (define (for-inner x limitX stepX) 
                    (cond 
                        ((< limitX) (define a (- (+ (* x x) (y * y)) 1)) ())
                    )
        )
        (cond 
            ((> y limitY) ())
            (else  (for-inner (+ x step) limit) (for-out ((- y step) limitY stepY)))
        )
)


(define (draw)
  ; YOUR CODE HERE
  (define b (rgb-new 0 0 0))
  (define w (rgb-new 255 255 255))
  (define red  (rgb-new 237 28 36))
  (define ora  (rgb-new 255 128 0))
  (define yrl  (rgb-new 255 255 0))
  (define grn  (rgb-new 0 219 0))
  (define blu  (rgb-new 72 164 255))
  (define ind (rgb-new 176 154 254))

    (define (func1 a x y)
                (define result (- (cube a) (* (* x x) (cube y))))
                (cond
                    ((< result 0) #t)
                    ((= result 0) #t)
                    (else #f)
                )
    )

    (pixelsize 10)
    (define (for-out y limitY stepY countY)
            (define (for-inner x limitX stepX countX)
                        (pd)
                        (print (list "start insssside loop" countX)) 
                        (cond 
                            ((< x limitX) 
                                (begin
                                    (print (list "now inside < limitX" countX)) 
                                    (define a (- (+ (* x x) (* y y)) 1)) 
                                    (cond 
                                        ((func1 a x y) (pixel countX countY "red"))
                                        (else (pixel countX (+ countY 220) "black"))
                                    )
                                    (for-inner (+ x stepX) limitX stepX (+ countX 1))
                                )
                            )
                            (else (print (list "start inside else" countX)))
                        )
            )
            (cond 
                ((< y limitY) 0)
                (else  
                    (begin
                        (print (list "start outside loop" countY)) 
                        (pu)
                        (goto (- countY 200) 120) 
                        (for-inner -1.5 1.5 0.05 0) 
                        (for-out (+ y stepY) limitY stepY (+ countY 1))
                    )
                )
            )
    )

  (print (for-out 1.5 -1.5 -0.1 0))
  (exitonclick)
)
  
; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)