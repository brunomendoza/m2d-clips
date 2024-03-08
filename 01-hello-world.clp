; Rule definition
(defrule duck
  (animal-is duck)
=>
  (assert (sound-is quack)))

(assert (animal-is duck))
(assert (animal-is lion))
(assert (animal-is wolf))

; Show agenda
(agenda)

; Show facts
(facts)

; Show rule names
(rules)

; Show rule definition
(ppdefrule duck)

; (run)
