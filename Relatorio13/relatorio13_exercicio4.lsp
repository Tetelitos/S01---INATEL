(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((a (remove-if-not
              (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
              lista))
         (b (mapcar
              (lambda (d)
                (format nil "~a - ~,2f mora"
                  (dominio-nome d)
                  (recompensa-final d)))
              a)))
    b))

(defun main ()
  (let* ((a (make-dominio :nome "Templo do Fogo" :elemento :pyro :dificuldade 2 :mora 1000))
         (b (make-dominio :nome "Templo da Agua" :elemento :hydro :dificuldade 3 :mora 2000))
         (c (make-dominio :nome "Templo do Gelo" :elemento :cryo :dificuldade 4 :mora 3000))
         (d (make-dominio :nome "Templo do Raio" :elemento :electro :dificuldade 5 :mora 4000))
         (e (make-dominio :nome "Templo do Vento" :elemento :anemo :dificuldade 1 :mora 500))
         (lista (list a b c d e))
         (copia (copy-dominio a)))

    (dolist (x (rota lista 3))
      (format t "~a~%" x))

    (format t "Total de mora: ~,2f~%"
      (reduce #'+ (mapcar #'recompensa-final lista)))

    (setf (dominio-mora copia) 5000)

    (format t "Mora da copia: ~a~%" (dominio-mora copia))
    (format t "Mora original: ~a~%" (dominio-mora a))))

(main)
