; Rule definition
(defrule duck
  (animal-is duck)
=>
  (assert (soud-is quack))

(assert (animal-is duck))
(animal (animal-is lion))
(animal (animal-is wolf))

; Show agenda
(agenda)

; Show facts
(facts)


; (run)
