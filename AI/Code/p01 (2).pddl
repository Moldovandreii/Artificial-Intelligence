(define (problem hanoi_robots.p1)
	(:domain hanoi_robots)
	(:objects r1 r2 d1 d2 d3 d4 rod1 rod2 rod3)
	(:init
		(robot r1) (robot r2) (rod rod1) (rod rod2) (rod rod3) (disk d1) (disk d2) (disk d3) (disk d4)
		(smaller d1 rod1) (smaller d1 rod2) (smaller d1 rod3) 
		(smaller d2 rod1) (smaller d2 rod2) (smaller d2 rod3)
		(smaller d3 rod1) (smaller d3 rod2) (smaller d3 rod3)
		(smaller d4 rod1) (smaller d4 rod2) (smaller d4 rod3)
		(smaller d1 d2) (smaller d1 d3) (smaller d1 d4) (smaller d2 d3) (smaller d2 d4) (smaller d3 d4)
		(on d1 d2) (on d2 d3) (on d3 d4) (on d4 rod1) 
		(clear d1) (clear rod2) (clear rod3)
		(free r1) (free r2)
		(not (at r1 d1)) (not (at r1 d2)) (not (at r1 d3)) (not (at r1 d4))
		(not (at r2 d1)) (not (at r2 d2)) (not (at r2 d3)) (not (at r2 d4))
		(not (carried d1)) (not (carried d2)) (not (carried d3)) (not (carried d4))
		(not (carried rod1)) (not (carried rod2)) (not (carried rod3)) 
		(placedLeftR r1) (placedRightR r2)
		(placedLeftD d1) (placedLeftD d2) (placedLeftD d3) (placedLeftD d4)
		(placedLeftDrod1) (placedMidD rod2) (placedRightD rod3)
	)
	(:goal (and (on d1 d2) (on d2 d3) (on d3 rod3)))
)