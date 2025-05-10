;; Square root using Newton's method
;; Newton's method works by iterative approximation using the formula:
;; next = (guess + x/guess) / 2 where x is the number we want to find sqrt of

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (* guess guess) x)) 0.001))
  
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  
  (sqrt-iter 1.0))

  ;; Read a number from input and calculate its square root
  (define (main)
    (display "Enter a number: ")
    (let ((input (read)))
      (if (number? input)
          (begin
            (display "Square root of ")
            (display input)
            (display " is ")
            (display (round (inexact (sqrt input))))
            (newline))
          (display "Please enter a valid number\n"))))

  ;; Call main function
  (main)

;; Example usage:
;; (sqrt 9)    ; should be close to 3
;; (sqrt 2)    ; should be close to 1.414