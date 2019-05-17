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

  (pixelsize 3)
  (bgcolor b)
  (color w)
  (pu)
  (goto 0 220)
  (pd)
  (setheading 150)
  (fd 350)
  (setheading 270)
  (fd 350)
  (setheading 30)
  (fd 350)
  (pu)
  (goto -512 -35)
  (setheading 75)
  (pd)
  (fd 445)
  (goto -512 -34)
  (fd 446)
  (goto -512 -33)
  (fd 447)
  (define (fading a)
  (if (> a 0) (begin
                (fd 2) 
                (color (rgb-new a a a)) 
                (fading (- a 2)))
               
      ))
  (define (ez time)
  (if (< 0 time)
  (begin
    (pd)
  (right 0.01)
  (fd 600)
  (pu)
  (back 600)
    (ez (- time 1)
      ))))
 (define (on a max colour)
 
    (begin
      (fading a)
      (color colour)
      (right 20)
      (ez 120)
      (left 21.2)
      (back a)
      (pd)
      
      (right 1)
      
       (if 
    (> 15 max)
    (on (+ a 1) (+ 1 max) colour )
      )
  
))
 (on 140 13 red)

(on 145 14 ora)

(on 145 14 yrl)

(on 147 14 grn)

(on 150 14 blu)

(on 152 14 ind)

  (exitonclick))
  
  

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)