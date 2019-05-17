(define (for-out y limitY stepY countY)
            (define (for-inner x limitX stepX countX)
                        (begin 
                        (print (list "start insssside loop" countX)) 
                        (cond 
                            ((< x limitX) 
                                (print (list "now inside < limitX" countX)) 
                                    ; (define a (- (+ (* x x) (* y y)) 1)) 
                                    ; (cond 
                                    ;     ((= (func1 a x y) #t) (print "red"))
                                    ;     (else (print "black"))
                                    ; )
                                (for-inner (+ x stepX) limitX stepX (+ countX 1))
                            )
                            (else (print (list "start inside else" countX)))
                        )
                        )
            )
            (cond 
                ((< y limitY) 0)
                (else  
                    (begin
                        (print (list "start outside loop" countY)) 
                        (for-inner -1.5 1.5 0.5 0)
                        (for-out (+ y stepY) limitY stepY (+ countY 1))
                    )
                )
            )
)

(for-out 1.5 -1.5 -0.1 0)
