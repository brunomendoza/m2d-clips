(deftemplate person (field name) (field address))
(deftemplate new_person (field name) (field address))

(defrule update-address 
  (new_person (name ?n) (new_address ?d))
  (person (name ?n) (adress ~?d))
  ?p <- (person (name ?n))
  ?new_adress <- (person (address ?a))
  (test (neq ?E ?D))
  =>
  (modify ?p (address ?d)))

(defrule update_address
  (person (name ?n) (adress)


(assert (person (name john) (address some-address)))
