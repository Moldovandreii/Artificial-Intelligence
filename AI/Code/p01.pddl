(define (problem use_taxi.p1)
	(:domain taxi)
	(:objects
			 t1 t2
			 Victor Andrei Voicu Horia
			 Fabricii CampuPainii Bucuresti FabriciiZahar Paris Gorunului Traian Decebal Oasului CaiiFerate MihaiViteazu Baritiu Ferdinand
			 full threequarter halffull onequarter empty
	)
	(:init
		(taxi t1) (taxi t2)
		(tLocation t1 Bucuresti) (tLocation t2 Baritiu)
		(tFuel t1 full) (tFuel t2 full)
		(outsideTaxi Victor) (outsideTaxi Andrei) (outsideTaxi Voicu) (outsideTaxi Horia)
		(pLocation Victor Fabricii) (pLocation Andrei Baritiu) (pLocation Voicu Fabricii) (pLocation Horia Fabricii)
		(connected Fabricii CampuPainii)  (connected Fabricii Bucuresti) (connected Fabricii FabriciiZahar) (connected Bucuresti Paris) (connected Bucuresti Gorunului) (connected Bucuresti Traian) (connected Traian Decebal) (connected Traian Oasului) (connected Oasului CaiiFerate) (connected Decebal MihaiViteazu) (connected MihaiViteazu Baritiu) (connected MihaiViteazu Ferdinand)
		(connected CampuPainii Fabricii)  (connected Bucuresti Fabricii) (connected FabriciiZahar Fabricii) (connected Paris Bucuresti) (connected Gorunului Bucuresti) (connected Traian Bucuresti) (connected Decebal Traian) (connected Oasului Traian) (connected CaiiFerate Oasului) (connected MihaiViteazu Decebal) (connected Baritiu MihaiViteazu) (connected Ferdinand MihaiViteazu)
		
		(useFuel full threequarter) (useFuel threequarter halffull) (useFuel halffull onequarter) (useFuel onequarter empty) (fillFuel empty full)

	)
	(:goal (and (pLocation Victor Baritiu) (plocation Andrei Gorunului)))
)