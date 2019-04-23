(define (f-r n)
        (if (< n 3)
            n
            (+ (f-r (- n 1))
               (* 2 (f-r (- n 2)))
               (* 3 (f-r (- n 3))))))

(define (f-i n)
    (define (f-i-internal a b c n)
            (if (= n 0)
                a
                (f-i-internal b c (+ c (* 2 b) (* 3 a)) (- n 1))))
    (f-i-internal 0 1 2 n))

(f-r 1)
(f-i 1)
(f-r 2)
(f-i 2)
(f-r 3)
(f-i 3)
(f-r 4)
(f-i 4)
(f-r 5)
(f-i 5)
(f-r 6)
(f-i 6)
(f-r 7)
(f-i 7)


