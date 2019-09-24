#lang racket

(provide (all-from-out "./icons.rkt"))
(require "./icons.rkt"
         (for-syntax racket))

(define-syntax (provide-string stx)
  (define id (second (syntax->datum stx)))
  (datum->syntax stx
                 `(begin
                    (provide ,id)
                    (define ,id ,(~a id)))))

(define-syntax-rule (provide-strings s ...)
  (begin (provide-string s) ...))

(provide-strings red orange yellow green blue purple
                 pink lightgreen lightblue cyan magenta salmon)
