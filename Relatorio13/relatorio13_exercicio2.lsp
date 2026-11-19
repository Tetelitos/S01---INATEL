(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - ~a - ~am - ~a"
    (criatura-nome c)
    (criatura-bioma c)
    (criatura-profundidade c)
    (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not
    (lambda (a) (> (criatura-profundidade a) metros))
    catalogo))

(defparameter *catalogo*
  (list
    (make-criatura :nome "Peeper" :bioma "Safe Shallows" :profundidade 30 :perigo :inofensiva)
    (make-criatura :nome "Stalker" :bioma "Kelp Forest" :profundidade 80 :perigo :agressiva)
    (make-criatura :nome "Reaper" :bioma "Crash Zone" :profundidade 200 :perigo :leviata)
    (make-criatura :nome "Ghost Leviathan" :bioma "Lost River" :profundidade 700 :perigo :leviata)))

(defun main ()
  (dolist (a (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" a))

  (let ((b (abaixo-de 100 *catalogo*)))
    (format t "~%Criaturas abaixo de 100 metros:~%")

    (dolist (a (mapcar #'descreve-criatura b))
      (format t "~a~%" a))

    (format t "Quantidade: ~a~%" (length b))))

(main)
