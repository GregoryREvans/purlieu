(
~makeEvents = {
	e = Dictionary.new;

	e.add(\birdnoise -> {
		1.do{
			~birdNoise = Pbind(
				\instrument, \bufnoise,
				\dur, Pwhite(1, 3, 25),
				\amp, Pwhite(0.125, 0.5, 25),
				\buf, Pseq([b[\birds][0].bufnum, b[\birds][1].bufnum, b[\birds][2].bufnum, b[\birds][3].bufnum, ], 25),
				\start, 0,
				\end, Pseq([b[\birds][0].numFrames - 2, b[\birds][1].numFrames - 2, b[\birds][2].numFrames - 2, b[\birds][3].numFrames - 2, ], 25),
				\freq, Pwhite(1, 8, 25),
				\atk, Pwhite(1, 3, 25),
				\sus, Pwhite(1, 3, 25),
				\rel, Pwhite(1, 3, 25),
				\c1, 1,
				\c2, (-1),
				\out, ~bus[\growingReverb],
				\group, ~mainGrp,
			).play;
		}
	});

	e.add(\openinggrains -> {
		1.do{
			~openingGrains = Pbind(
				\instrument, \bufgrains,
				\trigger, Pseq(Array.series(9, 4, 5), 1),
				\graindur, Pxrand((0.5..1), 9),
				\atk, Pwhite(0.5, 1.5),
				\rel, Pwhite(0.5, 2.5),
				\sndbuf, Pseq([b[\birds][8].bufnum, b[\birds][9].bufnum, b[\birds][10].bufnum, b[\birds][11].bufnum, ], inf),
				\transp, Pwhite(0.1, 1.2),
				\pos, Pseq([41000, 16000, 50692, 20714.3, ], inf),
				\pan, Pwhite(-1, 1),
				\amp, Pbrown(0.65, 1, 0.05),
				\envbuf, -1,
				\dur, Pseq([7.5, 6.4, 4.2, 3.1, 5.3, 0.3, 2.5, 1.4, 0.5], 1),
				\out, ~bus[\growingReverb],
				\group, ~mainGrp,
			).play;
		}
	});

	e.add(\basetendrones -> {
		1.do{
			~baseTenDrones = Pbind(
				\type, \note,
				\instrument, \sine,
				\dur, Pwhite(0.05, 0.5, (100..500).choose),
				\freq, Pxrand([20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340], (100..110).choose),
				\atk, Pwhite(2.0, 3.0, (100..500).choose),
				\rel, Pwhite(5.0, 10.0, (100..500).choose),
				\amp, Pexprand(0.01, 0.2, (100..500).choose),
				\pan, Pwhite(-0.8, 0.8, (100..500).choose),
				\out, ~bus[\reverb],
				\group, ~mainGrp,
			).play;
		}
	});


	e.add(\basetenarp -> {
		1.do{
			~baseTenArp = Pbind(
				\type, \note,
				\instrument, \sine,
				\dur, Pwhite(0.5, 1.25, inf),
				\freq, Pseq([20, 40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0, 440.0, 460.0, 480.0, 500.0, 520.0, 540.0, 560.0, 580.0, 600.0], 3),
				\atk, Pwhite(2.0, 3.0, inf),
				\rel, Pwhite(5.0, 10.0, inf),
				\amp, Pseq([1, 0.5, 0.3333333333333333, 0.25, 0.2, 0.16666666666666666, 0.14285714285714285, 0.125, 0.1111111111111111, 0.1, 0.09090909090909091, 0.08333333333333333, 0.07692307692307693, 0.07142857142857142, 0.06666666666666667, 0.0625, 0.058823529411764705, 0.05555555555555555, 0.05263157894736842, 0.05, 0.047619047619047616, 0.045454545454545456, 0.043478260869565216, 0.041666666666666664, 0.04, 0.038461538461538464, 0.037037037037037035, 0.03571428571428571, 0.034482758620689655, 0.03333333333333333], 3),
				\pan, Pwhite(-0.8, 0.8, inf),
				\out, ~bus[\reverb],
				\group, ~mainGrp,
		).play;
		};
	});

	e.add(\rumble -> {
		12.do{
			Synth(
				\bpfsaw,
				[
					\atk, exprand(0.5,1.5),
					\sus, 15,
					\rel, exprand(4.0,8.0),
					\c1, exprand(4,10.0),
					\c2, exprand(2.0,5).neg,
					\freq, [20, 40, 60, 80, 100, 120].choose,
					\detune, rrand(0.1, 2),
					\cfmin, 30,
					\cfmax, 400,
					\rqmin, 0.02,
					\rqmax, 0.08,
					\amp, exprand(0.6,0.9),
					\pan, rrand(-0.5,0.5),
					\out, ~bus[\growingReverb],
				],
				~mainGrp
			);
		};
	});

	e.add(\compoundrumble -> {
		Routine({
			10.do{
				Synth(
					\bpfsaw,
					[
						\atk, exprand(0.3, 0.7),
						\sus, exprand(0.5, 1),
						\rel, exprand(2.0, 4.0),
						\c1, exprand(4, 10.0),
						\c2, exprand(2.0, 5).neg,
						\freq, [88.0, 110.0, 132.0, 154.00000000000003, 176.0, 198.0, 220.0, 242.00000000000003, 264.0, 286.0].choose,
						\detune, rrand(0.05, 0.7),
						\cfmin, 40,
						\cfmax, 300,
						\rqmin, 0.03,
						\rqmax, 0.07,
						\amp, exprand(0.5, 0.7),
						\pan, rrand(-1, 1),
						\out, ~bus[\reverb],
					],
					~mainGrp
				);
			};

			1.wait;

			1.do{
				~birdNoise1 = Pbind(
					\instrument, \bufnoise,
					\dur, Pwhite(1, 3, 3),
					\amp, Pwhite(0.125, 0.5, 3),
					\buf, Pseq([b[\birds][12].bufnum, b[\birds][13].bufnum, b[\birds][14].bufnum, b[\birds][15].bufnum, ], 3),
					\start, 0,
					\end, Pseq([b[\birds][12].numFrames - 2, b[\birds][13].numFrames - 2, b[\birds][14].numFrames - 2, b[\birds][15].numFrames - 2, ], 3),
					\freq, Pwhite(1, 8, 3),
					\atk, Pwhite(0.3, 0.7, 3),
					\sus, Pwhite(0.3, 0.7, 3),
					\rel, Pwhite(0.3, 0.7, 3),
					\c1, 1,
					\c2, (-1),
					\out, ~bus[\reverb],
					\group, ~mainGrp,
				).play;
			};

			7.wait;

			10.do{
				Synth(
					\bpfsaw,
					[
						\atk, exprand(0.5, 0.9),
						\sus, exprand(0.7, 1.2),
						\rel, exprand(2.2, 4.2),
						\c1, exprand(4, 10.0),
						\c2, exprand(2.0,5).neg,
						\freq, [88.0, 110.0, 132.0, 154.00000000000003, 176.0, 198.0, 220.0, 242.00000000000003, 264.0, 286.0].choose,
						\detune, rrand(0.05, 0.7),
						\cfmin, 40,
						\cfmax, 300,
						\rqmin, 0.03,
						\rqmax, 0.07,
						\amp, exprand(0.5,0.7),
						\pan, rrand(-1, 1),
						\out, ~bus[\reverb],
					],
					~mainGrp
				);
			};

			s.sync;

			1.do{
				~birdNoise2 = Pbind(
					\instrument, \bufnoise,
					\dur, Pwhite(1, 3, 5),
					\amp, Pwhite(0.125, 0.5, 5),
					\buf, Pseq([b[\birds][12].bufnum, b[\birds][13].bufnum, b[\birds][14].bufnum, b[\birds][15].bufnum, ], 5),
					\start, 0,
					\end, Pseq([b[\birds][12].numFrames - 2, b[\birds][13].numFrames - 2, b[\birds][14].numFrames - 2, b[\birds][15].numFrames - 2, ], 5),
					\freq, Pwhite(1, 8, 5),
					\atk, Pwhite(0.3, 0.7, 5),
					\sus, Pwhite(0.3, 0.7, 5),
					\rel, Pwhite(0.3, 0.7, 5),
					\c1, 1,
					\c2, (-1),
					\out, ~bus[\reverb],
					\group, ~mainGrp,
				).play;
			};
		}).play(AppClock);
	});


};
)
