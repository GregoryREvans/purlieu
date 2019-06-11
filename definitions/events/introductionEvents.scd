(
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
			\amp, Pbrown(0.65, 1, 0.1),
			\envbuf, -1,
			\dur, Pseq([7.5, 6.4, 4.2, 3.1, 5.3, 0.3, 2.5, 1.4, 0.5], 1),
			\out, ~bus[\growingReverb],
			\group, ~mainGrp,
		).play;
	}
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
				\amp, exprand(0.7, 0.9),
				\pan, rrand(-0.5,0.5),
				\out, ~bus[\growingReverb],
			],
			~mainGrp
		);
	};
});
)
