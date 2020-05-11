(
e.add(\birdnoise -> {
	1.do{
		~birdNoise = Pbind(
			\instrument, \bufnoise,
			\dur, Pwhite(1, 3, 25),
			\amp, Pwhite(0.4, 0.8, 25),
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

e.add(\basetendrones -> {
	1.do{
		~baseTenDrones = Pbind(
			\type, \note,
			\instrument, \sine,
			\dur, Pwhite(0.05, 0.5, (100..500).choose),
			\freq, Pxrand([20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340], (100..110).choose),
			\atk, Pwhite(2.0, 3.0, (100..500).choose),
			\rel, Pwhite(5.0, 10.0, (100..500).choose),
			\amp, Pexprand(0.125, 0.25, (100..500).choose),
			\pan, Pwhite(-0.8, 0.8, (100..500).choose),
			\out, ~bus[\reverb],
			\group, ~mainGrp,
		).play;
	}
});
)
