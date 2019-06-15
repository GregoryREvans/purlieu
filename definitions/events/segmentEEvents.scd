(

//(([252.0, 280.0, 308.0, 335.99999999999994, 420.0, 448.0, 532.0, 560.0, 588.0, 616.0, 643.9999999999999, 671.9999999999999, 700.0, 728.0, 756.0, 783.9999999999999, 811.9999999999999, 840.0],

e.add(\basefourteendrone -> {
	8.do{
		~baseFourteenAccel1 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Pxrand(
				[
				20,
				56.0,
				83.99999999999999,
				112.0,
				140.0,
				167.99999999999997,
				195.99999999999997,
				224.0,
				],
				inf),
	        \dur, Pseq(
	            [
				5,
				3,
				1,
				7,
				6,
				4,
				2,
				8,
				7,
				5,
				3,
				9,
				8,
				6,
				4,
				],
	            1),
	        \amp, Pbrown(0.75, 2, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(2, 4, length:inf),
			\rel, Pbrown(3, 6, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\reverb],
			\group, ~mainGrp,
	    ).play;
	}
});

e.add(\basefourteenaccel1 -> {
	1.do{
		~baseFourteenAccel1 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, 475.99999999999994,
	        \dur, Pseq(
	            [
				2.0,
				1.9000000000000001,
				1.8,
				1.7000000000000002,
				1.6,
				1.5,
				1.3,
				1.1,
				0.9,
				0.6000000000000001,
				0.30000000000000004,
				0.1
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, 0.25,
			\rel, Pbrown(0.5, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\reverb],
			\group, ~mainGrp,
	    ).play;
	}
});

e.add(\basefourteenaccel2 -> {
	1.do{
		~baseFourteenAccel2 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, 391.99999999999994,
	        \dur, Pseq(
	            [
				1.2,
				1.14,
				1.08,
				1.02,
				0.96,
				0.8999999999999999,
				0.78,
				0.6599999999999999,
				0.54,
				0.36,
				0.18,
				0.06
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, 0.25,
			\rel, Pbrown(0.5, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\reverb],
			\group, ~mainGrp,
	    ).play;
	}
});

e.add(\basefourteenaccel3 -> {
	1.do{
		~baseFourteenAccel3 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, [364.0, 504.0, ],
	        \dur, Pseq(
	            [
				0.2,
				0.19,
				0.18,
				0.17,
				0.16,
				0.15,
				0.13,
				0.11,
				0.09,
				0.06,
				0.03,
				0.01
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, 0.25,
			\rel, Pbrown(0.5, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\reverb],
			\group, ~mainGrp,
	    ).play;
	}
});

)
