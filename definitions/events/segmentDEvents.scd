(
//OMCollider Patterns
e.add(\basethirteenpattern1 -> {
	1.do{
		~baseThirteenPattern1 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([20, 234.00000000000003, 442.0, 650.0, ], inf),
	        \dur, Pseq(
	            [
				0.17, 0.17, 0.17, Rest(0.13), 0.13, 0.13, 0.13, 0.07, Rest(0.07), 0.07, 0.07, 0.07, Rest(0.14), Rest(0.5), Rest(0.29), 0.07, Rest(0.14),0.25, 0.25, Rest(0.25), 0.25, 0.17, 0.17, Rest(0.17), 0.13, 0.13, Rest(0.13), 0.13, 0.1, Rest(0.2), 0.1, Rest(0.1), 0.06, 0.06, Rest(0.06), 0.06, 0.06, Rest(0.13), 0.06, Rest(0.13), 0.13, Rest(0.25), 0.07, 0.07, Rest(0.14), 0.07, Rest(0.07), 0.07, 0.5, 0.17, Rest(0.17), 0.17, 0.1, Rest(0.1), 0.1, Rest(0.1), 0.1, Rest(0.33), 0.17, Rest(0.17), 0.17, Rest(0.17), Rest(0.14), 0.07, Rest(0.07), 0.07, Rest(0.14), Rest(0.5), Rest(0.25), 0.06, 0.06, Rest(0.06), 0.06, 0.13, 0.13, Rest(0.25), 0.08, 0.08, 0.08, Rest(0.25), 0.1, Rest(0.2), 0.1, 0.1, Rest(0.2), 0.1, Rest(0.2), Rest(0.07), 0.07, 0.07, Rest(0.21), 0.07, 0.17, Rest(0.17), 0.17, Rest(0.13), 0.13, Rest(0.25), Rest(0.33), 0.17, Rest(0.13), 0.06, 0.06, Rest(0.19), 0.06, 0.17, Rest(0.33), Rest(0.17), 0.17, Rest(0.17), 0.06, 0.06, 0.06, Rest(0.06), 0.06, Rest(0.13), 0.06, Rest(0.5), 0.08, Rest(0.08), 0.08, 0.08, 0.08, Rest(0.08), Rest(0.5), Rest(0.07), 0.07, 0.07, Rest(0.07), 0.07, Rest(0.14), Rest(0.5), 0.1, Rest(0.1), 0.1, Rest(0.2), Rest(0.5), 0.5, 0.06, Rest(0.13), 0.06, Rest(0.13), 0.06, Rest(0.06), 0.06, Rest(0.06), 0.06, 0.06, 0.06, Rest(0.06), 0.06, Rest(0.06), Rest(0.25), 0.13, 0.13, 0.17, Rest(0.33), 0.17, Rest(0.17), 0.17, 0.07, 0.07, Rest(0.14), 0.07, Rest(0.14), 0.1, 0.1, 0.1, Rest(0.1), 0.1, 0.25, 0.25, Rest(0.13), 0.06, 0.06, Rest(0.06), 0.06, 0.06, 0.06, 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

e.add(\basethirteenpattern2 -> {
	1.do{
		~baseThirteenPattern2 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([52.0, 260.0, 468.00000000000006, 676.0000000000001, ], inf),
	        \dur, Pseq(
	            [
				0.25, 0.25, 0.06, Rest(0.19), 0.06, Rest(0.06), 0.06, Rest(0.06), 0.06, Rest(0.13), 0.06, Rest(0.13), 0.06, Rest(0.06), Rest(0.5), Rest(0.14), 0.07, 0.07, 0.07, Rest(0.14), 0.1, Rest(0.4), Rest(0.5), 0.07, Rest(0.43), Rest(0.13), 0.13, 0.13, Rest(0.13), 0.25, Rest(0.25), Rest(0.13), 0.13, Rest(0.13), 0.13, Rest(0.14), 0.07, 0.07, 0.07, 0.07, Rest(0.07), 0.08, Rest(0.25), 0.08, Rest(0.08), 0.07, 0.07, Rest(0.14), 0.07, 0.07, Rest(0.07), 0.07, 0.07, 0.07, Rest(0.14), 0.07, Rest(0.07), Rest(0.5), 0.25, 0.25, Rest(0.2), 0.1, Rest(0.1), 0.1, Rest(0.21), 0.07, 0.07, Rest(0.07), 0.07, 0.1, Rest(0.1), 0.1, Rest(0.2), Rest(0.5), Rest(0.08), 0.08, Rest(0.17), 0.08, Rest(0.08), 0.06, Rest(0.06), 0.06, Rest(0.13), 0.06, Rest(0.06), 0.06, 0.07, 0.07, 0.07, Rest(0.07), 0.07, 0.07, Rest(0.07), 0.5, 0.1, Rest(0.2), 0.1, 0.1, 0.06, Rest(0.19), 0.06, Rest(0.19), 0.1, 0.1, 0.1, Rest(0.1), 0.1, 0.5, 0.07, 0.07, Rest(0.29), 0.07, Rest(0.5), 0.07, Rest(0.29), 0.07, 0.07, Rest(0.25), 0.08, Rest(0.17), Rest(0.1), 0.1, 0.1, Rest(0.2), 0.17, 0.17, 0.17, Rest(0.5), Rest(0.08), 0.08, Rest(0.08), 0.08, 0.08, 0.08, 0.5, 0.25, 0.25, 0.1, 0.1, Rest(0.2), 0.1, 0.17, 0.17, Rest(0.17), 0.07, Rest(0.14), 0.07, 0.07, 0.07, 0.07, Rest(0.5), Rest(0.17), 0.17, 0.17, 0.08, Rest(0.08), 0.08, Rest(0.08), 0.08, 0.08, Rest(0.29), 0.07, Rest(0.07), 0.07, 0.06, Rest(0.06), 0.06, 0.06, Rest(0.25), Rest(0.5), 0.07, Rest(0.14), 0.07, 0.07, 0.07, 0.07, 0.25, Rest(0.25), 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

e.add(\basethirteenpattern3 -> {
	1.do{
		~baseThirteenPattern3 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([78.0, 286.0, 494.0, 702.0, ], inf),
	        \dur, Pseq(
	            [
				0.1, Rest(0.3), 0.1, Rest(0.07), 0.07, 0.07, Rest(0.07), 0.07, Rest(0.14), 0.25, 0.25, Rest(0.25), 0.25, Rest(0.25), 0.25, Rest(0.21), 0.07, 0.07, 0.07, 0.07, 0.13, Rest(0.13), 0.13, Rest(0.13), 0.17, Rest(0.33), Rest(0.25), 0.25, Rest(0.0), Rest(0.25), 0.25, Rest(0.06), 0.06, Rest(0.19), 0.06, Rest(0.06), 0.06, 0.08, Rest(0.08), 0.08, Rest(0.08), 0.08, Rest(0.08), Rest(0.13), 0.13, Rest(0.13), 0.13, Rest(0.5), 0.25, Rest(0.25), 0.08, Rest(0.42), 0.07, Rest(0.21), 0.07, 0.07, 0.07, Rest(0.25), 0.25, 0.07, 0.07, Rest(0.07), 0.07, Rest(0.21), Rest(0.0), 0.5, Rest(0.07), 0.07, Rest(0.14), 0.07, 0.07, Rest(0.07), 0.07, Rest(0.07), 0.07, Rest(0.07), 0.07, 0.07, Rest(0.07), Rest(0.5), 0.06, Rest(0.06), 0.06, Rest(0.13), 0.06, Rest(0.13), Rest(0.21), 0.07, 0.07, 0.07, Rest(0.07), 0.25, Rest(0.25), Rest(0.25), 0.13, 0.13, 0.08, 0.08, Rest(0.25), 0.08, 0.25, 0.25, 0.5, Rest(0.5), Rest(0.13), 0.06, 0.06, 0.06, Rest(0.19), 0.17, Rest(0.17), 0.17, Rest(0.13), 0.06, 0.06, Rest(0.06), 0.06, 0.06, Rest(0.06), Rest(0.17), 0.17, Rest(0.17), 0.1, Rest(0.1), 0.1, 0.1, 0.1, Rest(0.5), Rest(0.07), 0.07, Rest(0.14), 0.07, 0.07, 0.07, Rest(0.2), 0.1, 0.1, 0.1, 0.1, Rest(0.1), 0.1, 0.1, Rest(0.1), 0.07, Rest(0.14), 0.07, 0.07, Rest(0.14), 0.06, Rest(0.06), 0.06, Rest(0.13), 0.06, Rest(0.13), Rest(0.5), 0.17, Rest(0.17), 0.17, Rest(0.42), 0.08, Rest(0.5), 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

e.add(\basethirteenpattern4 -> {
	1.do{
		~baseThirteenPattern4 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([104.0, 312.0, 520.0, 728.0, ], inf),
	        \dur, Pseq(
	            [
				0.07, Rest(0.14), 0.07, 0.07, 0.07, Rest(0.07), 0.13, Rest(0.13), 0.13, Rest(0.13), Rest(0.06), 0.06, 0.06, Rest(0.13), 0.06, 0.06, Rest(0.06), Rest(0.07), 0.07, Rest(0.07), 0.07, Rest(0.14), 0.07, Rest(0.13), 0.13, Rest(0.25), 0.06, 0.06, Rest(0.25), 0.06, 0.06, Rest(0.25), 0.25, Rest(0.3), 0.1, 0.1, 0.17, 0.17, Rest(0.17), 0.5, Rest(0.1), 0.1, Rest(0.1), 0.1, 0.1, Rest(0.21), 0.07, 0.07, Rest(0.07), 0.07, 0.06, 0.06, 0.06, Rest(0.25), 0.06, 0.13, 0.13, Rest(0.25), 0.5, 0.08, 0.08, Rest(0.25), 0.08, 0.08, Rest(0.17), 0.08, Rest(0.17), 0.13, Rest(0.38), 0.1, Rest(0.1), 0.1, Rest(0.2), Rest(0.17), 0.17, Rest(0.17), Rest(0.08), 0.08, 0.08, Rest(0.17), 0.08, 0.17, Rest(0.33), 0.07, Rest(0.07), 0.07, Rest(0.07), 0.07, 0.07, 0.07, 0.25, Rest(0.25), 0.25, 0.25, Rest(0.25), 0.25, Rest(0.25), 0.06, Rest(0.06), 0.06, Rest(0.06), 0.13, 0.13, 0.13, Rest(0.13), 0.06, 0.06, Rest(0.06), 0.06, 0.06, Rest(0.13), 0.06, Rest(0.5), 0.07, Rest(0.07), 0.07, Rest(0.07), 0.07, 0.07, Rest(0.07), 0.13, 0.13, 0.13, 0.13, Rest(0.07), 0.07, 0.07, 0.07, 0.07, Rest(0.07), 0.07, Rest(0.08), 0.08, 0.08, 0.08, Rest(0.17), 0.25, Rest(0.25), 0.1, 0.1, Rest(0.1), 0.1, 0.1, Rest(0.07), 0.07, 0.07, Rest(0.07), 0.07, Rest(0.07), 0.07, Rest(0.0), Rest(0.1), 0.1, Rest(0.1), 0.1, Rest(0.1), 0.08, Rest(0.17), 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, Rest(0.08), Rest(0.2), 0.1, 0.1, 0.1, 0.13, 0.13, Rest(0.25), Rest(0.07), 0.07, Rest(0.07), 0.07, Rest(0.14), 0.07, Rest(0.21), 0.07, 0.07, Rest(0.14), 0.06, 0.06, 0.06, Rest(0.13), 0.06, Rest(0.06), 0.06, Rest(0.08), 0.08, 0.08, 0.08, 0.08, Rest(0.08), Rest(0.0), 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

e.add(\basethirteenpattern5 -> {
	1.do{
		~baseThirteenPattern5 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([130.0, 338.00000000000006, 546.0, 754.0, ], inf),
	        \dur, Pseq(
	            [
				0.08, Rest(0.17), 0.08, Rest(0.08), 0.08, Rest(0.38), 0.13, 0.07, Rest(0.07), 0.07, 0.07, Rest(0.07), 0.07, Rest(0.07), Rest(0.14), 0.07, 0.07, Rest(0.14), 0.07, 0.13, Rest(0.38), 0.13, 0.13, Rest(0.25), 0.07, Rest(0.07), 0.07, 0.07, 0.07, 0.07, Rest(0.07), 0.06, Rest(0.19), 0.06, 0.06, Rest(0.13), Rest(0.25), 0.25, 0.06, Rest(0.06), 0.06, 0.06, Rest(0.06), 0.06, 0.06, Rest(0.06), Rest(0.13), 0.13, Rest(0.13), 0.13, Rest(0.1), 0.1, 0.1, 0.1, Rest(0.1), Rest(0.5), Rest(0.13), 0.06, Rest(0.06), 0.06, 0.06, 0.06, Rest(0.06), 0.25, Rest(0.25), Rest(0.4), 0.1, 0.17, Rest(0.33), 0.25, Rest(0.25), 0.07, 0.07, 0.07, 0.07, 0.07, 0.07, 0.07, 0.1, 0.1, 0.1, 0.1, Rest(0.1), Rest(0.3), 0.1, 0.1, 0.1, Rest(0.1), 0.1, Rest(0.2), 0.1, 0.1, 0.1, Rest(0.1), 0.1, Rest(0.06), 0.06, Rest(0.19), 0.06, 0.06, Rest(0.06), Rest(0.17), 0.17, Rest(0.17), Rest(0.5), Rest(0.29), 0.07, 0.07, 0.07, 0.07, Rest(0.14), 0.07, 0.07, Rest(0.07), 0.07, Rest(0.2), 0.1, 0.1, Rest(0.1), 0.25, 0.25, 0.07, 0.07, 0.07, Rest(0.21), 0.07, Rest(0.4), 0.1, 0.5, 0.1, 0.1, Rest(0.1), 0.1, Rest(0.1), Rest(0.1), 0.1, 0.1, 0.1, 0.1, 0.13, Rest(0.38), Rest(0.06), 0.06, 0.06, Rest(0.25), 0.06, 0.5, 0.06, Rest(0.06), 0.06, Rest(0.06), 0.06, Rest(0.06), 0.06, Rest(0.06), Rest(0.5), 0.25, Rest(0.25), Rest(0.5), Rest(0.1), 0.1, 0.1, 0.1, Rest(0.1), 0.5, 0.13, 0.13, 0.13, 0.13, 0.25, 0.25, 0.08, 0.08, Rest(0.08), 0.08, Rest(0.17), 0.08, 0.08, Rest(0.17), 0.08, Rest(0.08), 0.5, Rest(0.2), 0.1, Rest(0.2), 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

e.add(\basethirteenpattern6 -> {
	1.do{
		~baseThirteenPattern6 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([156.0, 364.0, 572.0, 780.0, ], inf),
	        \dur, Pseq(
	            [
				0.08, 0.08, 0.08, 0.08, Rest(0.17), 0.13, Rest(0.13), 0.13, Rest(0.13), 0.17, Rest(0.33), Rest(0.07), 0.07, 0.07, 0.07, 0.07, 0.07, Rest(0.07), 0.13, 0.13, Rest(0.13), 0.13, 0.08, Rest(0.17), 0.08, Rest(0.17), 0.1, Rest(0.1), 0.1, Rest(0.1), 0.1, 0.17, 0.17, Rest(0.17), 0.07, Rest(0.07), 0.07, 0.07, 0.07, Rest(0.07), 0.07, Rest(0.33), 0.17, 0.07, Rest(0.07), 0.07, 0.07, Rest(0.07), 0.07, 0.07, Rest(0.5), 0.25, Rest(0.25), 0.5, 0.13, 0.13, 0.13, 0.13, 0.17, Rest(0.17), 0.17, Rest(0.17), 0.17, 0.17, 0.1, Rest(0.2), 0.1, 0.1, Rest(0.1), 0.1, 0.1, Rest(0.1), 0.1, 0.25, Rest(0.25), Rest(0.06), 0.06, 0.06, Rest(0.06), 0.06, Rest(0.19), 0.13, Rest(0.13), 0.13, Rest(0.13), Rest(0.1), 0.1, Rest(0.3), Rest(0.25), 0.25, Rest(0.25), 0.06, Rest(0.06), 0.06, 0.06, Rest(0.5), Rest(0.1), 0.1, Rest(0.2), 0.1, Rest(0.17), 0.17, 0.17, Rest(0.13), 0.06, Rest(0.06), 0.06, Rest(0.06), 0.06, Rest(0.06), Rest(0.07), 0.07, Rest(0.36), 0.17, Rest(0.33), Rest(0.2), 0.1, 0.1, Rest(0.1), Rest(0.5), Rest(0.06), 0.06, 0.06, 0.06, 0.06, 0.06, Rest(0.06), 0.06, 0.07, Rest(0.21), 0.07, Rest(0.07), 0.07, Rest(0.17), 0.08, Rest(0.25), Rest(0.33), 0.17, 0.25, 0.25, Rest(0.07), 0.07, Rest(0.07), 0.07, 0.07, 0.07, 0.07, Rest(0.08), 0.08, 0.08, 0.08, 0.08, Rest(0.08), 0.13, 0.13, Rest(0.25), Rest(0.2), 0.1, 0.1, 0.1, 0.17, Rest(0.33), 0.06, 0.06, 0.06, 0.06, Rest(0.06), 0.06, Rest(0.13), Rest(0.1), 0.1, 0.1, Rest(0.1), 0.1, Rest(0.14), 0.07, Rest(0.14), 0.07, 0.07, Rest(0.19), 0.06, 0.06, 0.06, Rest(0.06), 0.06, Rest(0.5), 0.08, Rest(0.25), 0.08, Rest(0.08), Rest(0.08), 0.08, Rest(0.08), 0.08, 0.08, 0.08, 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

e.add(\basethirteenpattern7 -> {
	1.do{
		~baseThirteenPattern7 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([182.0, 390.0, 598.0, ], inf),
	        \dur, Pseq(
	            [
				Rest(0.25), 0.25, Rest(0.2), 0.1, 0.1, Rest(0.1), 0.5, Rest(0.07), 0.07, Rest(0.07), 0.07, 0.07, 0.07, 0.07, Rest(0.25), 0.13, 0.13, Rest(0.13), 0.13, Rest(0.25), Rest(0.5), Rest(0.07), 0.07, Rest(0.14), 0.07, 0.07, Rest(0.07), 0.5, Rest(0.25), 0.06, 0.06, 0.06, 0.06, 0.08, Rest(0.17), 0.08, Rest(0.17), 0.17, Rest(0.33), 0.08, 0.08, 0.08, Rest(0.17), 0.08, 0.08, 0.08, Rest(0.08), 0.08, 0.08, Rest(0.08), 0.1, Rest(0.2), 0.1, 0.1, 0.17, Rest(0.17), 0.17, Rest(0.5), Rest(0.07), 0.07, 0.07, 0.07, 0.07, Rest(0.14), 0.25, 0.25, Rest(0.5), 0.08, Rest(0.08), 0.08, 0.08, 0.08, Rest(0.08), 0.25, 0.25, 0.13, 0.13, Rest(0.13), 0.13, 0.1, Rest(0.1), 0.1, 0.1, Rest(0.1), Rest(0.25), 0.08, Rest(0.08), 0.08, Rest(0.13), 0.13, 0.13, 0.13, Rest(0.1), 0.1, Rest(0.1), 0.1, Rest(0.1), Rest(0.3), 0.1, Rest(0.1), Rest(0.2), 0.1, Rest(0.1), 0.1, Rest(0.13), 0.13, 0.13, Rest(0.13), 0.1, Rest(0.1), 0.1, 0.1, 0.1, Rest(0.2), 0.1, 0.1, Rest(0.1), 0.07, 0.07, Rest(0.14), 0.07, 0.07, Rest(0.07), 0.08, 0.08, 0.08, Rest(0.08), 0.08, 0.08, Rest(0.2), 0.1, 0.1, 0.1, 0.13, Rest(0.25), 0.13, 0.06, Rest(0.19), 0.06, 0.06, Rest(0.13), 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, Rest(0.17), 0.17, 0.17, Rest(0.06), 0.06, Rest(0.06), 0.06, Rest(0.13), 0.06, 0.06, 0.5, 0.1, 0.1, 0.1, 0.1, 0.1, 0.25, Rest(0.25), Rest(0.17), 0.17, 0.17, Rest(0.1), 0.1, 0.1, Rest(0.1), 0.1, Rest(0.5), Rest(0.07), 0.07, Rest(0.07), 0.07, Rest(0.21), Rest(0.1), 0.1, 0.1, Rest(0.2), Rest(0.5), 0.17, Rest(0.17), 0.17, 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

e.add(\basethirteenpattern8 -> {
	1.do{
		~baseThirteenPattern8 = Pbind(
	        \instrument, \bpfsaw,
	        \freq, Prand([208.0, 416.0, 624.0, ], inf ),
	        \dur, Pseq(
	            [
				0.13, 0.13, 0.13, Rest(0.13), 0.06, 0.06, 0.06, Rest(0.19), 0.06, Rest(0.06), 0.5, Rest(0.5), 0.08, Rest(0.08), 0.08, 0.08, 0.08, Rest(0.08), 0.1, Rest(0.4), Rest(0.08), 0.08, Rest(0.25), 0.08, 0.1, 0.1, 0.1, 0.1, Rest(0.1), Rest(0.29), 0.07, 0.07, Rest(0.07), 0.1, 0.1, 0.1, Rest(0.2), Rest(0.5), 0.17, 0.17, Rest(0.17), 0.06, Rest(0.19), 0.06, Rest(0.06), 0.06, 0.06, Rest(0.0), 0.08, 0.08, 0.08, 0.08, Rest(0.17), 0.25, 0.25, Rest(0.13), 0.13, 0.13, 0.13, Rest(0.25), 0.08, 0.08, 0.08, 0.5, Rest(0.07), 0.07, 0.07, 0.07, Rest(0.14), 0.07, 0.25, Rest(0.25), Rest(0.08), 0.08, Rest(0.08), 0.08, 0.08, Rest(0.08), Rest(0.07), 0.07, Rest(0.14), 0.07, Rest(0.14), 0.1, 0.1, 0.1, 0.1, 0.1, 0.13, Rest(0.38), Rest(0.14), 0.07, Rest(0.21), 0.07, 0.25, 0.25, Rest(0.25), 0.25, Rest(0.33), 0.17, Rest(0.5), Rest(0.1), 0.1, 0.1, 0.1, Rest(0.1), 0.5, 0.13, 0.13, Rest(0.13), 0.13, Rest(0.07), 0.07, Rest(0.29), 0.07, Rest(0.38), 0.13, Rest(0.0), Rest(0.13), 0.13, 0.13, 0.13, 0.07, 0.07, Rest(0.07), 0.07, Rest(0.07), 0.07, Rest(0.07), 0.17, Rest(0.33), Rest(0.17), 0.17, Rest(0.17), 0.17, Rest(0.17), 0.17, Rest(0.08), 0.08, 0.08, 0.08, 0.08, Rest(0.08), 0.13, 0.13, Rest(0.25), 0.25, 0.25, Rest(0.25), 0.25, 0.5, 0.06, 0.06, 0.06, 0.06, 0.06, 0.06, 0.06, 0.06, Rest(0.06), 0.06, 0.06, Rest(0.06), 0.06, Rest(0.06), 0.06, Rest(0.06), 0.5,
				],
	            1),
	        \amp, Pbrown(5, 7, length:inf),
	        \pan, Pbrown(-1, 1, length:inf),
			\atk, Pbrown(0.05, 1, length:inf),
			\rel, Pbrown(0.05, 1, length:inf),
			\c1, Pbrown(0.5, 1.5, length:inf),
			\c2, Pbrown(-1.5, -0.5, length:inf),
			\detune, Pbrown(0.1, 0.3, length:inf),
			\cfhzmin, Pbrown(0.5, 1.5, length:inf),
			\cfhzmax, Pbrown(2.5, 3.5, length:inf),
			\cfmin, Pbrown(400, 600, length:inf),
			\cfmax, Pbrown(1000, 3000, length:inf),
			\rqmin, Pbrown(0.05, 0.15, length:inf),
			\rqmax, Pbrown(0.15, 0.25, length:inf),
			\lsf, Pbrown(150, 250, length:inf),
			\ldb, Pbrown(0, 0.2, length:inf),
			\out, ~bus[\oscillatingReverb],
			\group, ~mainGrp,
	    ).play;
	}
	});

	e.add(\supsounds -> {
		(4).do{
			arg i;
			~supSounds = Synth(
				\bpfbuf,
				[
				\atk, 0.5,
				\sus, 109,
				\rel, 0.5,
				\c1, 1,
				\c2, (-1),
				\buf, b[\supr][i],
				\rate, 1,
				\spos, 0,
				\freq, [208.0, 416.0, 624.0, ].choose,
				\rq, 1,
				\bpfmix, [0, 0.25].choose,
				\pan, [-1, -0.5, 0, 0.5, 1].choose,
				\amp, 1,
				\out, ~bus[\growingReverb],
				],
				~mainGrp,
				);
		};
	});

)
