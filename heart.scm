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

(define (cube x) (* x (* x x)))

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

    (pixelsize 2)
    (define (for-out y limitY stepY countY)
            (define (for-inner x limitX stepX countX)
                        (cond 
                            ((< x limitX) 
                                (begin
                                    (define a (- (+ (* x x) (* y y)) 1)) 
                                    (cond 
                                        ((func1 a x y) (pixel (+ 100 countX) (- 200 countY) "red"))
                                        (else (pixel (+ 100 countX) (- 200 countY) "white"))
                                    )
                                    (for-inner (+ x stepX) limitX stepX (+ countX 1))
                                )
                            )
                        )
            )
            (cond 
                ((< y limitY) 0)
                (else  
                    (begin
                        (pu)
                        (goto (- 200 countY) 120) 
                        (for-inner -3 3 0.01225 0) 
                        (for-out (+ y stepY) limitY stepY (+ countY 1))
                    )
                )
            )
    )
  (print (for-out 3 -3 -0.025 0))
  (exitonclick)
)
  
; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)