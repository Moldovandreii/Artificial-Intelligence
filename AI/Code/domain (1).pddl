(define (domain taxi)
	(:predicates (taxi ?t) (tLocation ?t ?l) (pLocation ?p ?l) (insideTaxi ?p ?t) (outsideTaxi ?p) (connected ?l1 ?l2) (tFuel ?t ?f) (useFuel ?f1 ?f2) (fillFuel ?f1 ?f2))

	(:action getIn
		:parameters (?t ?p ?l)
		:precondition (and (taxi ?t) (tLocation ?t ?l) (pLocation ?p ?l) (outsideTaxi ?p))
		:effect (and (not (outsideTaxi ?p)) (insideTaxi ?p ?t) (not (pLocation ?p ?l)))
	)

	(:action getOut
		:parameters (?t ?p ?l)
		:precondition (and (taxi ?t) (tLocation ?t ?l) (insideTaxi ?p ?t))
		:effect (and (outsideTaxi ?p) (not (insideTaxi ?p ?t)) (pLocation ?p ?l))
	)

	(:action move
		:parameters(?t ?l1 ?f1 ?l2 ?f2)
		:precondition (and (taxi ?t) (tLocation ?t ?l1) (tFuel ?t ?f1) (useFuel ?f1 ?f2) (connected ?l1 ?l2))
		:effect(and (not (tLocation ?t ?l1)) (tLocation ?t ?l2) (not (tFuel ?t ?f1)) (tFuel ?t ?f2))
	)

	(:action fillFuel
		:parameters (?t ?f1 ?f2)
		:precondition (and (taxi ?t) (tFuel ?t ?f1) (fillFuel ?f1 ?f2))
		:effect (and (not (tFuel ?t ?f1)) (tFuel ?t ?f2))
	)
)