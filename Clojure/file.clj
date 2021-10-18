(defn reading []
 (def textreading 
  	(slurp "example.txt"))
 (println textreading) )

(defn writing []
 (spit "output.txt" "Lorem Ipsum."))

(reading)
(writing) 