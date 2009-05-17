;Project Euler Problem #2
;Initial solution, not working yet

(def four-million 4000000)

(def fib-seq
     (lazy-cat [0 1] (map + (rest fib-seq) fib-seq)))

;(println (apply + (filter #(or (even? %)(<= % four-million))
;                    (take 500 fib-seq)))) 

(println (apply + (take-while #(< % four-million)
                              (filter #(even? %) fib-seq))))

