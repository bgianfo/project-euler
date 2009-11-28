(def factorial 
  (fn  [n]
    (loop [cnt n acc 1]
      (if (zero? cnt) acc
        (recur (dec cnt) (* acc cnt))))))

(defn fact [n]
  (memoize (factorial n)))

(defn thing [n r]
  (/ (factorial n) (* (factorial r) (factorial (- n r)))))

(defn thing-m [n r]
  (memoize (thing n r)))

(defn apply-thing [n] 
  (println n)
  (pmap (fn [r] (thing n r)) (range 1 n)))

(defn bigdaddy? [n]
  (> n 1000000))

;(filter bigdaddy? (set (pmap apply-thing (range 1 1000))))
(filter bigdaddy? (seq (map apply-thing (range 1 100))))

