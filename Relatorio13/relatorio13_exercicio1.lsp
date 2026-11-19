(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (erva)
  (cond
    ((>= (erva-toxicidade erva) 7) "veneno")
    ((>= (erva-toxicidade erva) 4) "use com cuidado")
    (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$ ~,2f por grama - ~a"
    (erva-nome erva)
    (erva-preco-por-grama erva)
    (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Maomao vai testar a erva em si mesma"
      "Liberada para o paciente"))

(defun main ()
  (let* ((a (make-erva :nome "Camomila" :preco-por-grama 2.0 :toxicidade 0))
         (b (make-erva :nome "Mandragora" :preco-por-grama 5.0 :toxicidade 5))
         (c (make-erva :nome "Beladona" :preco-por-grama 8.0 :toxicidade 9))
         (ervas (list a b c)))

    (dolist (e ervas)
      (format t "~a~%" (descreve-erva e))
      (format t "~a~%" (aviso e)))

    (format t "Preco da dose: R$ ~,2f~%" (preco-da-dose a 5))))

(main)
