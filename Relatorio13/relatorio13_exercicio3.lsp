(defstruct garota-magica
  nome
  escuridao
  bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica
    :nome (garota-magica-nome g)
    :bruxas (garota-magica-bruxas g)
    :escuridao
      (if (>= quantidade (garota-magica-escuridao g))
          0
          (- (garota-magica-escuridao g) quantidade))))

(defun main ()
  (let* ((a (make-garota-magica :nome "Madoka" :escuridao 20 :bruxas 3))
         (b (make-garota-magica :nome "Homura" :escuridao 60 :bruxas 10))
         (c (make-garota-magica :nome "Mami" :escuridao 40 :bruxas 7))
         (grupo (list a b c))
         (d (make-garota-magica :nome "Sayaka" :escuridao 30 :bruxas 2))
         (novo-grupo (cons d grupo))
         (nova (purifica b 25)))

    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    (format t "Grupo original: ~a~%" (escuridao-total grupo))
    (format t "Novo grupo: ~a~%" (escuridao-total novo-grupo))

    (format t "Escuridao original: ~a~%" (garota-magica-escuridao b))
    (format t "Escuridao apos purificar: ~a~%" (garota-magica-escuridao nova))))

(main)
