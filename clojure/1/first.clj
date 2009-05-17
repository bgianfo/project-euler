;Solution to Project Euler #1 in Clojure
(def max-val 1000)

(println (apply + (filter #(or 
                    (= 0 (rem % 3))
                    (= 0 (rem % 5))
                  )
            (range max-val))
        )
)

;ps: I know my style sucks, it's the only way i can read lisp.
