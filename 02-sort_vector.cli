; defmodule allows a set of constructs
(defmodule MAIN (export sort-vector))

(deffacts initial-facts
    (vector (value 5))
    (vector (value 3))
    (vector (value 9))
    (vector (value 1))
    (vector (value 2))
)

(deffunction compare-vectors (?v1 ?v2)
    (< (send ?v1 get-value) (send ?v2 get-value))
)

(defclass vector
    (is-a USER)
    (slot value (type INTEGER))
)

(defrule sort-vectors
    (declare (salience 10))
    ?v1 <- (vector (value ?val1))
    ?v2 <- (vector (value ?val2&:(test (< ?val1 ?val2))))
    =>
    (modify ?v1 (value ?val2))
    (modify ?v2 (value ?val1))
    (printout t "Swapping " ?val1 " and " ?val2 crlf)
    (assert (sort-needed))
)

(defrule check-sorted
    (not (sort-needed))
    (vector (value ?val1))
    (vector (value ?val2&:(test (> ?val1 ?val2))))
    =>
    (assert (sort-needed))
)

(defrule perform-sort
    (sort-needed)
    =>
    (printout t "Sorting vectors..." crlf)
    (do-for-all-facts ((?v vector)) TRUE
        (retract ?v)
    )
    (do-for-all-facts ((?v vector)) TRUE
        (assert ?v)
    )
    (printout t "Vectors sorted successfully!" crlf)
)

(deffunction sort-vector ()
    (assert (sort-needed))
    (run)
)

