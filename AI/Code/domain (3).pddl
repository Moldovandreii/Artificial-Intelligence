(define (domain hanoi_robots)
	(:predicates (clear ?x) (on ?x ?y) (smaller ?x ?y) (free ?robot) (at ?robot ?disk) (robot ?r) (disk ?d) (rod ?rd) (carried ?d) (placedLeftR ?r) (placedRightR ?r)             (placedLeftD ?d) (placedRightD ?d) (placedMidD ?d) (placedLeftRd ?rd) (placedRightRd ?rd) (placedMidRd ?rd))
	
	(:action pickRight
		:parameters (?robot ?from ?disk)
		:precondition (and (free ?robot) (clear ?disk) (on ?disk ?from) (robot ?robot) (disk ?disk) (not (carried ?disk)) (placedRightR ?robot) (placedRightD ?disk))
		:effect (and (not (free ?robot)) (at ?robot ?disk) (not (on ?disk ?from)) (clear ?from) (carried ?disk) (not (placedRightD ?disk)))
	)

	(:action pickLeft
		:parameters (?robot ?from ?disk)
		:precondition (and (free ?robot) (clear ?disk) (on ?disk ?from) (robot ?robot) (disk ?disk) (not (carried ?disk)) (placedLeftR ?robot) (placedLeftD ?disk)) 
		:effect (and (not (free ?robot)) (at ?robot ?disk) (not (on ?disk ?from)) (clear ?from) (carried ?disk) (not (placedLeftD ?disk)))	
	)

	(:action pickMid
		:parameters (?robot ?from ?disk)
		:precondition (and (free ?robot) (clear ?disk) (on ?disk ?from) (robot ?robot) (disk ?disk) (not (carried ?disk)) (placedMidD ?disk)) 
		:effect (and (not (free ?robot)) (at ?robot ?disk) (not (on ?disk ?from)) (clear ?from) (carried ?disk) (not (placedMidD ?disk)))	
	)

	(:action dropRight
		:parameters (?robot ?to ?disk)
		:precondition (and (smaller ?disk ?to) (robot ?robot) (disk ?disk) (at ?robot ?disk) (clear ?to) (not (carried ?to)) (placedRightR ?robot) (placedRightD ?to))
		:effect (and (free ?robot) (on ?disk ?to) (not (clear ?to)) (not (at ?robot ?disk)) (not (carried ?disk)) (placedRightD ?disk))
	)

	(:action dropLeft
		:parameters (?robot ?to ?disk)
		:precondition (and (smaller ?disk ?to) (robot ?robot) (disk ?disk) (at ?robot ?disk) (clear ?to) (not (carried ?to)) (placedLeftR ?robot) (placedLeftD ?to))
		:effect (and (free ?robot) (on ?disk ?to) (not (clear ?to)) (not (at ?robot ?disk)) (not (carried ?disk)) (placedLeftD ?disk))
	)

	(:action dropMid
		:parameters (?robot ?to ?disk)
		:precondition (and (smaller ?disk ?to) (robot ?robot) (disk ?disk) (at ?robot ?disk) (clear ?to) (not (carried ?to)) (placedMidD ?to))
		:effect (and (free ?robot) (on ?disk ?to) (not (clear ?to)) (not (at ?robot ?disk)) (not (carried ?disk)) (placedMidD ?disk))
	)

	(:action take
		:parameters (?r1 ?r2 ?disk)
		:precondition (and (free ?r1) (not (free ?r2)) (at ?r2 ?disk) (not (at ?r1 ?disk)))
		:effect (and (free ?r2) (not (free ?r1)) (at ?r1 ?disk) (not (at ?r2 ?disk)))
	)

)