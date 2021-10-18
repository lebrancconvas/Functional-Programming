(defn command []
  (def x 1)
  (def y 2)
  (def status true)
  (println x)
  (println y)	)

(defn condition []
  (if (> 2 3)
    (println "It is OK.")
    (println "OH! Interested.") 
  )
)

(defn recursion []
  (loop [i 0]
    (when (<= i 10)
    (println i)
    (recur (inc i))))) 


(command) 
(condition)
(recursion)  