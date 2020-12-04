#lang racket
(display "Задание 2\n")
(define (recur lst)
  (if ( < 1 (length lst))
      (append (reverse lst) (recur (cdr lst)))
      lst)
  
 )
(display "Список lst:(list 1 2 3 4 5 6)\n")
(display "Результата реверсирования хвоста lst:")
(recur (list 1 2 3 4 5 6))

(display "Задание 5\n")
(display "Введите список из шести чисел\n")
(define list2 (list (read) (read) (read) (read) (read) (read)))

(define (multiplication list2)
(if (= (length list2) 1)
(car list2)
(* (car list2) (multiplication (cdr list2)))))

(define (func2 list2)
(if (= (length list2) 1)
    list2
(cons (multiplication list2) (func2 (cdr list2)))))
(display (format "~a\n\n" (func2 list2)))


(display "Задание 8\n")
(define (rec lst num)
  (if (= 0 num)
      (car (reverse lst))
      (rec (reverse (cdr (reverse lst))) (- num 1 ))
      )
  
 )
(display "Список:(1 2 3 4 5 6 7 8 9 10) и позиция 0\n")
(display "Элемент списка по заданному номеру с конца:")
(rec '(1 2 3 4 5 6 7 8 9 10) 0)
(display "Список:(1 2 3 4 5 6 7 8 9 10) и позиция 1\n")
(display "Элемент списка по заданному номеру с конца:")
(rec '(1 2 3 4 5 6 7 8 9 10) 1)
(display "Список:(1 2 3 4 5 6 7 8 9 10) и позиция 2\n")
(display "Элемент списка по заданному номеру с конца:")
(rec '(1 2 3 4 5 6 7 8 9 10) 2)