#lang racket

(require "kana.rkt")

(module+ main
  (define keys (dict-keys kana-dict))
  (let iter ()
    (define key (first (shuffle keys)))
    (define value (dict-ref kana-dict key))
    (displayln key)
    (cond [(equal? value (string-trim (read-line)))
           (displayln "Correct!")
           (iter)]
          [else
           (displayln (format "Incorrect! The correct answer is: ~a" value))
           (iter)])))
