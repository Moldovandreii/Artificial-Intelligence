(define (domain hanoi_towers)
	;;clear - nothing on top , on - x is on y, smaller - x is smaller than y
	(:predicates (clear ?x) (on ?x ?y) (smaller ?x ?y))
	(:action move          
		:parameters (?disk ?from ?to)
		:precondition (and (on ?disk ?from) (clear ?to)
							(clear ?disk) (smaller ?disk ?to))
		:effect (and (clear ?from) (not (clear ?to)) (not (on ?disk ?from)) (on ?disk ?to))))