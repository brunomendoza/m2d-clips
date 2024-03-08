(assert a)
(defrule fact_a_not_exist
  (not (a)) => printout t "not a")
