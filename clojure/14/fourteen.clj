(use 'clojure.contrib.map-utils)

(defn functor [i orig call]
  (if (== i 1)
    (hash-map (+ 1 call) orig )
    (if (even? i) 
      (recur (/ i 2) orig (+ 1 call))
      (recur (+ (* 3 i) 1) orig (+ 1 call)))))

(last (sort (apply merge (pmap (fn [x] (functor x x 0)) (range  799999 999999)))))
