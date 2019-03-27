; Get the average of two numbers
(define (average num other-num)
    (/ (+ num other-num) 2))

; Get the proportional difference between two numbers
; eg (= (proportional-diff 10 20) 1)
; eg (= (proportional-diff 11 10) 0.1)
(define (proportional-diff num other-num)
        (/ (abs (- num other-num)) num))

; Is there a significant difference between the two numbers?
; Check if proportional-difference is greater than 0.0001
(define (significant-change? guess prev-guess)
        (< (proportional-diff guess prev-guess) 0.0001))

; Newton's formula to improve a guess for the cube root of a number
(define (improve guess num)
        (/ (+ (* 2 guess)
              (/ num (square guess)))
           3))

; Iteratively improve a guessed cube root until no further significant improvements occur
(define (cube-root-iter guess prev-guess num)
        (if (significant-change? guess prev-guess)
            guess
            (cube-root-iter (improve guess num) guess num)))

; Use the iterative improvement method above to find the cube root
(define (cube-root num)
        (cube-root-iter 1.0 num num))

; Sample executions

(display (cube-root 27))
(display "\n")

(display (cube-root 64))
(display "\n")

(display (cube-root 12500))
(display "\n")
