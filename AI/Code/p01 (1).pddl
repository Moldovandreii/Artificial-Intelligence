(define (problem hanoi_towers.p1)
	(:domain hanoi_towers)
	(:objects d1 d2 d3 r1 r2 r3)
	(:init
		(smaller d1 d2) (smaller d1 d3) (smaller d2 d3)
		(smaller d1 r1) (smaller d1 r2) (smaller d1 r3)
		(smaller d2 r1) (smaller d2 r2) (smaller d2 r3)
		(smaller d3 r1) (smaller d3 r2) (smaller d3 r3)
		(on d1 d2) (on d2 d3) (on d3 r1)
		(clear d1) (clear r2) (clear r3))
	(:goal (and (on d3 r3) (on d2 d3) (on d1 d2))))