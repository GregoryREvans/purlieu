(
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

		(1..5).choose.do{
			~birdNoise1 = Pbind(
				\instrument, \bufnoise,
				\dur, Pwhite(1, 3, 2),
				\amp, Pwhite(0.125, 0.5, 2),
				\buf, Pseq([b[\birds][12].bufnum, b[\birds][13].bufnum, b[\birds][14].bufnum, b[\birds][15].bufnum, ], 2),
				\start, 0,
				\end, Pseq([b[\birds][12].numFrames - 2, b[\birds][13].numFrames - 2, b[\birds][14].numFrames - 2, b[\birds][15].numFrames - 2, ], 2),
				\freq, Pwhite(1, 8, 2),
				\atk, Pwhite(0.3, 0.7, 2),
				\sus, Pwhite(0.3, 0.7, 2),
				\rel, Pwhite(0.3, 0.7, 2),
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
					\atk, exprand(0.7, 1.2),
					\sus, exprand(0.8, 1.3),
					\rel, exprand(3.3, 5.3),
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

		(1..8).choose.do{
			~birdNoise2 = Pbind(
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

		10.wait;

		10.do{
			Synth(
				\bpfsaw,
				[
					\atk, exprand(0.7, 1.2),
					\sus, exprand(0.8, 1.3),
					\rel, exprand(3.3, 5.3),
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

		(3..8).choose.do{
			~birdNoise3 = Pbind(
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

	}).play(AppClock);
});

e.add(\baseelevensinegrains -> {
	2.do{
		~baseElevenSineGrains = Pbind(
			\type, \note,
			\instrument, \sine,
			\dur, Pwhite(0.05, 0.09, (500..600).choose),
			\freq, Pxrand([20, 44.0, 66.0, 88.0, 110.0, 132.0, 154.00000000000003, 176.0, 198.0, 220.0, 242.00000000000003, 264.0, 286.0, 308.00000000000006, 330.0, 352.0, 374.00000000000006, 396.0, 418.00000000000006, 440.0, 462.0, 484.00000000000006, 506.0, 528.0, 550.0000000000001, 572.0, 594.0, 616.0000000000001, 638.0, 660.0], (500..600).choose),
			\atk, Pwhite(0.005, 0.01, (500..600).choose),
			\rel, Pwhite(0.03, 0.3, (500..600).choose),
			\amp, Pexprand(0.005, 0.1, (500..600).choose),
			\pan, Pwhite(-0.8, 0.8, (500..600).choose),
			\out, ~bus[\reverb],
			\group, ~mainGrp,
		).play;
	};
});

e.add(\birddrones -> {
	(4..9).choose.do{
		~birdDrones = Synth(
			\bpfbuf,
			[
			\atk, [0, 1, 3].choose,
			\sus, [1, 3, 5].choose,
			\rel, [5, 7, 9].choose,
			\c1, 1,
			\c2, (-1),
			\buf, [b[\birds][0].bufnum, b[\birds][1].bufnum, b[\birds][2].bufnum, ].choose,
			\rate, [0.125, 0.0625, 0.03125, 0.015625, 0.0078125, -0.125, -0.0625, -0.03125, -0.015625, -0.0078125].choose,
			\spos, 0,
			\freq, [396.0, 418.00000000000006, 440.0, 462.0, 484.00000000000006, 506.0, 528.0, 550.0000000000001].choose,
			\rq, 1,
			\bpfmix, [0, 0.5, 1].choose,
			\pan, [-1, -0.5, 0, 0.5, 1].choose,
			\amp, [0.25, 0.5, 0.6].choose,
			\out, ~bus[\growingReverb],
			],
			~mainGrp,
			);
	};
});

e.add(\baseelevendrones -> {
	2.do{
		~baseElevenDrones = Pbind(
			\type, \note,
			\instrument, \sine,
			\dur, Pbrown(0.05, 0.5, (250..300).choose),
			\freq, Pxrand([20, 44.0, 66.0, 88.0, 110.0, 132.0, 154.00000000000003, 176.0, 198.0, 220.0, 242.00000000000003, 264.0, 286.0, 308.00000000000006, 330.0, 352.0, 374.00000000000006, 396.0, 418.00000000000006, 440.0, 462.0, 484.00000000000006, 506.0, 528.0, 550.0000000000001, 572.0, 594.0, 616.0000000000001, 638.0, 660.0], (250..300).choose),
			\atk, Pbrown(2.0, 3.0, (250..300).choose),
			\rel, Pbrown(5.0, 10.0, (250..300).choose),
			\amp, Pbrown(0.001, 0.03, (250..300).choose),
			\pan, Pbrown(-0.8, 0.8, (250..300).choose),
			\out, ~bus[\reverb],
			\group, ~mainGrp,
		).play;
	}
});

)
